import 'package:pulumi/pulumi.dart';

class Updatable extends CustomResource {
  Updatable(
    String name,
    Input<String> value, {
    Input<String>? secret,
    CustomResourceOptions? options,
  }) : super(
          'testprovider:index:Updatable',
          name,
          {
            'value': value,
            if (secret != null) 'secret': secret,
          },
          options ?? CustomResourceOptions(),
        );
}

String _secretDisplayValue(Object? value) {
  if (value is Map<String, dynamic>) {
    final inner = value['value'];
    if (inner is String) {
      return inner;
    }
  }
  return '$value';
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    Updatable(
      'updatable',
      Input.fromValue('step1'),
      secret: Input.fromOutput(
        Output.createSecret(Output.create('hello secret')),
      ),
      options: CustomResourceOptions(
        hooks: ResourceHookBinding(
          beforeCreate: [
            ResourceHook('beforeCreate', (args) {
              print('BeforeCreate: value is ${args.newInputs?['value']}');
              final secretInput = args.newInputs?['secret'];
              print('BeforeCreate: secret is secret');
              print(
                  'BeforeCreate: secret is ${_secretDisplayValue(secretInput)}');
            }),
          ],
          afterCreate: [
            ResourceHook('afterCreate', (args) {
              print('AfterCreate: value is ${args.newOutputs?['value']}');
            }),
          ],
          beforeUpdate: [
            ResourceHook('beforeUpdate', (args) {
              print(
                'BeforeUpdate: value was ${args.oldInputs?['value']}, is ${args.newInputs?['value']}',
              );
            }),
          ],
          afterUpdate: [
            ResourceHook('afterUpdate', (args) {
              print(
                'AfterUpdate: value was ${args.oldOutputs?['value']}, is ${args.newOutputs?['value']}',
              );
            }),
          ],
        ),
      ),
    );
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
