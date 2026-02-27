import 'package:pulumi/pulumi.dart';

Future<void> main() async {
  await DeploymentImpl.run(() {
    Config('config_missing_dart').require('notFound');
  });
}
