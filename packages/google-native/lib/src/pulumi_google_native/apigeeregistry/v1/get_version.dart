import 'package:pulumi/pulumi.dart';
import 'get_version_args.dart';
import 'get_version_result.dart';

/// Returns a specified version.
Future<GetVersionResult> getVersion(
  GetVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionResult.fromMap(result);
}
