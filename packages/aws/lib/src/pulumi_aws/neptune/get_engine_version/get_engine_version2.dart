import 'package:pulumi/pulumi.dart';
import 'get_engine_version_args2.dart';
import 'get_engine_version_result2.dart';

/// Information about a Neptune engine version.
///
/// > **Note:** If AWS returns multiple matching engine versions, this data source will produce a `multiple Neptune engine versions` error. To avoid this, provide additional criteria to narrow the results or use the `latest` argument to select a single version. See the Argument Reference for details.
Future<GetEngineVersionResult2> getEngineVersion2(
  GetEngineVersionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:neptune/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionResult2.fromMap(result);
}
