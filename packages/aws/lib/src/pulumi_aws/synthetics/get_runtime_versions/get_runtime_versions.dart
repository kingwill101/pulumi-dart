import 'package:pulumi/pulumi.dart';
import 'get_runtime_versions_args.dart';
import 'get_runtime_versions_result.dart';

/// Data source for managing an AWS CloudWatch Synthetics Runtime Versions.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetRuntimeVersionsResult> getRuntimeVersions(
  GetRuntimeVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:synthetics/getRuntimeVersions:getRuntimeVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuntimeVersionsResult.fromMap(result);
}
