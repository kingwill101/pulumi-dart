import 'package:pulumi/pulumi.dart';
import 'get_runtime_version_args.dart';
import 'get_runtime_version_result.dart';

/// Data source for managing an AWS CloudWatch Synthetics Runtime Version.
///
/// ## Example Usage
///
/// ### Latest Runtime Version
///
///
///
/// ### Specific Runtime Version
Future<GetRuntimeVersionResult> getRuntimeVersion(
  GetRuntimeVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:synthetics/getRuntimeVersion:getRuntimeVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuntimeVersionResult.fromMap(result);
}
