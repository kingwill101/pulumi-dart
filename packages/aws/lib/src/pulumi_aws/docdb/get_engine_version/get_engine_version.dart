import 'package:pulumi/pulumi.dart';
import 'get_engine_version_args.dart';
import 'get_engine_version_result.dart';

/// Information about a DocumentDB engine version.
Future<GetEngineVersionResult> getEngineVersion(
  GetEngineVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:docdb/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionResult.fromMap(result);
}
