import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:aws_dart_dynamicresource/main.dart';

Future<void> main() async {
  await pulumi.Deployment.run(() => DynamicResourceStack());
}
