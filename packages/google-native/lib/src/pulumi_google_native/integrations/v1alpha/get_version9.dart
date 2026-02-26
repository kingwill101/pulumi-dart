import 'package:pulumi/pulumi.dart';
import 'get_version_args9.dart';
import 'get_version_result9.dart';

/// Get a integration in the specified project.
Future<GetVersionResult9> getVersion9(
  GetVersionArgs9 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionResult9.fromMap(result);
}
