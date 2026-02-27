import 'package:pulumi/pulumi.dart';
import 'get_attached_versions_args.dart';
import 'get_attached_versions_result.dart';

/// Provides access to available platform versions in a location for a given project.
Future<GetAttachedVersionsResult> getAttachedVersions(
  GetAttachedVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getAttachedVersions:getAttachedVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttachedVersionsResult.fromMap(result);
}
