import 'package:pulumi/pulumi.dart';
import 'get_engine_version_args3.dart';
import 'get_engine_version_result3.dart';

/// Information about an RDS engine version.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With `filter`
Future<GetEngineVersionResult3> getEngineVersion3(
  GetEngineVersionArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getEngineVersion:getEngineVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEngineVersionResult3.fromMap(result);
}
