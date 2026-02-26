import 'package:pulumi/pulumi.dart';
import 'get_gi_versions_args.dart';
import 'get_gi_versions_result.dart';

/// Data source to retrieve available Grid Infrastructure versions of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
Future<GetGiVersionsResult> getGiVersions(
  GetGiVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getGiVersions:getGiVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGiVersionsResult.fromMap(result);
}
