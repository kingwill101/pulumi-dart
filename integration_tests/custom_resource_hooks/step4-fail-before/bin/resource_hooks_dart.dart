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
      Input.fromValue('step4'),
      options: CustomResourceOptions(
        hooks: ResourceHookBinding(
          beforeCreate: [
            ResourceHook('beforeCreate', (args) {
              throw Exception('BeforeCreate hook failed');
            }),
          ],
          afterCreate: [
            ResourceHook('afterCreate', (args) async {
              await DeploymentImpl.instance.logger
                  .info('AfterCreate: value is ${args.newOutputs?['value']}');
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
