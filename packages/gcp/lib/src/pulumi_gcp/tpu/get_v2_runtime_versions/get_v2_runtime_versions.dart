import 'package:pulumi/pulumi.dart';
import 'get_v2_runtime_versions_args.dart';
import 'get_v2_runtime_versions_result.dart';

/// Get runtime versions available for a project. For more information see the [official documentation](https://cloud.google.com/tpu/docs/) and [API](https://cloud.google.com/tpu/docs/reference/rest/v2/projects.locations.runtimeVersions).
///
/// ## Example Usage
///
///
///
///
/// ### Configure Basic TPU VM With Available Version
Future<GetV2RuntimeVersionsResult> getV2RuntimeVersions(
  GetV2RuntimeVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tpu/getV2RuntimeVersions:getV2RuntimeVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetV2RuntimeVersionsResult.fromMap(result);
}
