import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_engine_version_args.dart';
import 'get_engine_version_result.dart';

/// Information about a DocumentDB engine version.
Future<GetEngineVersionResult> getEngineVersion(
  GetEngineVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:docdb/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionResult.fromMap(result);
}
