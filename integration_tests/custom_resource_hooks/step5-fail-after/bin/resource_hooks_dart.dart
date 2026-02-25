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
      Input.fromValue('step5'),
      options: CustomResourceOptions(
        hooks: ResourceHookBinding(
          beforeCreate: [
            ResourceHook('beforeCreate', (args) async {
              await DeploymentImpl.instance.logger
                  .info('BeforeCreate: value is ${args.newInputs?['value']}');
            }),
          ],
          afterCreate: [
            ResourceHook('afterCreate', (args) {
              throw Exception('AfterCreate hook failed');
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
