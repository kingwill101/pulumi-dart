import 'package:pulumi/pulumi.dart';

class Updatable extends CustomResource {
  Updatable(String name, Input<String> value, {CustomResourceOptions? options})
      : super(
          'testprovider:index:Updatable',
          name,
          {'value': value},
          options ?? CustomResourceOptions(),
        );
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    Updatable(
      'updatable',
      Input.fromValue('step2'),
      options: CustomResourceOptions(
        hooks: ResourceHookBinding(
          beforeCreate: [
            ResourceHook('beforeCreate', (args) {
              print('BeforeCreate: value is ${args.newInputs?['value']}');
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
