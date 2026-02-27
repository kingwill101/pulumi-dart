import 'package:pulumi/pulumi.dart';

Future<void> main() async {
  await Deployment.runOrThrow(() {
    Config('config_missing_dart').require('notFound');
  });
}
