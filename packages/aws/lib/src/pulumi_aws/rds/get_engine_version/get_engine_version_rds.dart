import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_engine_version_rds_args.dart';
import 'get_engine_version_rds_result.dart';

/// Information about an RDS engine version.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With `filter`
Future<GetEngineVersionRdsResult> getEngineVersionRds(
  GetEngineVersionRdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionRdsResult.fromMap(result);
}
