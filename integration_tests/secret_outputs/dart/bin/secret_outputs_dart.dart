import 'package:pulumi/pulumi.dart';

class R extends CustomResource {
  late final Output<String?> prefix;

  R(
    String name, {
    required Input<String> prefix,
    CustomResourceOptions? opts,
  }) : super(
         'testprovider:index:R',
         name,
         {'prefix': prefix},
         opts ?? CustomResourceOptions(),
       ) {
    this.prefix = registerOutput<String?>('prefix');
  }
}

class SecretOutputsStack extends Stack {
  SecretOutputsStack() {
    final withoutSecret = R(
      'withoutSecret',
      prefix: Input.fromValue("it's a secret to everybody"),
    );

    final withSecret = R(
      'withSecret',
      prefix: Input.fromOutput(
        Output.createSecret(Output.create("it's a secret to everybody")),
      ),
    );

    final withSecretAdditional = R(
      'withSecretAdditional',
      prefix: Input.fromValue("it's a secret to everybody"),
      opts: CustomResourceOptions(additionalSecretOutputs: ['prefix']),
    );

    registerOutputs({
      'withoutSecret': withoutSecret.prefix,
      'withSecret': withSecret.prefix,
      'withSecretAdditional': withSecretAdditional.prefix,
    });
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => SecretOutputsStack());
}
