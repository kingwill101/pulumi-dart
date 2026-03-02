import 'package:pkg/pkg.dart' as pkg;
import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  MyStack() {
    final customA = pkg.index.Echo(
      'a',
      args: pkg.index.EchoArgs(echo: 42),
    );
    final deployment = DeploymentImpl.instance as DeploymentImpl;

    final echoA = customA.urn.apply((urn) async {
      final result = await deployment.invoke<Map<String, dynamic>>(
        'pulumi:pulumi:getResource',
        {'urn': urn},
      );
      final state = result['state'] as Map<String, dynamic>;
      return state['echo'];
    });

    final echoInvoke = customA.urn.apply((_) async {
      final result = await pkg.index.doEcho(pkg.index.DoEchoArgs(echo: 'hello'));
      return result.echo;
    });

    registerOutputs({
      'echoA': echoA,
      'echoInvoke': echoInvoke,
    });
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
