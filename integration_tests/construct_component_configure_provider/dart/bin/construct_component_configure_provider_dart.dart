import 'package:pulumi/pulumi.dart';

Output<T> outputFromFuture<T>(Future<T> future) {
  return Output(
    future.then(
      (value) => OutputData<T>(
        value: value,
        isKnown: true,
        isSecret: false,
        resources: {},
      ),
    ),
  );
}

Input<String> unknownIfDryRun(String value) {
  final deployment = DeploymentImpl.instance as DeploymentImpl;
  if (deployment.isDryRun) {
    return Input.fromOutput(Output.createUnknown<String>());
  }
  return Input.fromValue(value);
}

class Configurer extends ComponentResource {
  Configurer(
    String name,
    Input<String> tlsProxy, [
    ComponentResourceOptions? options,
  ]) : super(
          'metaprovider:index:Configurer',
          name,
          {'tlsProxy': tlsProxy},
          options,
          remote: true,
        );

  Future<ProviderResource> tlsProvider() async {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'metaprovider:index:Configurer/tlsProvider',
      {},
      self: this,
    );

    final provider = result['res'] ?? result['result'] ?? result['provider'];
    if (provider is ProviderResource) {
      return provider;
    }

    throw StateError(
      'Expected ProviderResource from tlsProvider, got ${provider.runtimeType}',
    );
  }

  Future<int> meaningOfLife() async {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'metaprovider:index:Configurer/meaningOfLife',
      {},
      self: this,
    );

    final value = result['res'] ?? result['result'];
    if (value is int) {
      return value;
    }
    if (value is num) {
      return value.toInt();
    }

    throw StateError(
        'Expected numeric meaningOfLife, got ${value.runtimeType}');
  }

  Future<ObjectMix> objectMix() async {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'metaprovider:index:Configurer/objectMix',
      {},
      self: this,
    );

    final provider = result['provider'];
    if (provider is! ProviderResource) {
      throw StateError(
        'Expected ProviderResource for objectMix.provider, got ${provider.runtimeType}',
      );
    }

    final meaning = result['meaningOfLife'];
    int? parsedMeaning;
    if (meaning is int) {
      parsedMeaning = meaning;
    } else if (meaning is num) {
      parsedMeaning = meaning.toInt();
    }

    return ObjectMix(provider: provider, meaningOfLife: parsedMeaning);
  }
}

class ObjectMix {
  final ProviderResource provider;
  final int? meaningOfLife;

  ObjectMix({required this.provider, required this.meaningOfLife});
}

class TlsPrivateKey extends CustomResource {
  TlsPrivateKey(
    String name, {
    required Input<String> algorithm,
    required Input<String> ecdsaCurve,
    CustomResourceOptions? options,
  }) : super(
          'tls:index/privateKey:PrivateKey',
          name,
          {'algorithm': algorithm, 'ecdsaCurve': ecdsaCurve},
          options ?? CustomResourceOptions(),
        );
}

class MyStack extends Stack {
  MyStack() {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    deployment.registerResourceOperation(_run(deployment));
  }

  Future<void> _run(DeploymentImpl deployment) async {
    final proxy = deployment.getConfig('proxy');
    if (proxy == null) {
      throw StateError('Missing required config value: proxy');
    }

    final configurer = Configurer('configurer', unknownIfDryRun(proxy));

    final provider = await configurer.tlsProvider();
    final key = TlsPrivateKey(
      'my-private-key',
      algorithm: Input.fromValue('ECDSA'),
      ecdsaCurve: Input.fromValue('P384'),
      options: CustomResourceOptions(provider: provider),
    );

    final meaningOfLife = await configurer.meaningOfLife();
    final mix = await configurer.objectMix();

    final key2 = TlsPrivateKey(
      'my-private-key-2',
      algorithm: Input.fromValue('ECDSA'),
      ecdsaCurve: Input.fromValue('P384'),
      options: CustomResourceOptions(provider: mix.provider),
    );

    await Future.wait([key.urn.getValue(), key2.urn.getValue()]);

    await deployment.registerResourceOutputs(
      this,
      Output.create({
        'keyAlgo': Output.create('ECDSA'),
        'keyAlgo2': Output.create('ECDSA'),
        'meaningOfLife': Output.create(meaningOfLife),
        'meaningOfLife2': Output.create(mix.meaningOfLife ?? 0),
      }),
    );
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
