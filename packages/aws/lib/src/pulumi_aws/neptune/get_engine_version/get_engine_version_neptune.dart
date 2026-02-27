import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_engine_version_neptune_args.dart';
import 'get_engine_version_neptune_result.dart';

/// Information about a Neptune engine version.
///
/// > **Note:** If AWS returns multiple matching engine versions, this data source will produce a `multiple Neptune engine versions` error. To avoid this, provide additional criteria to narrow the results or use the `latest` argument to select a single version. See the Argument Reference for details.
Future<GetEngineVersionNeptuneResult> getEngineVersionNeptune(
  GetEngineVersionNeptuneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:neptune/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionNeptuneResult.fromMap(result);
}
