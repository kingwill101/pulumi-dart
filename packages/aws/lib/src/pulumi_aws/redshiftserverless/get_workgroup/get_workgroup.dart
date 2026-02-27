import 'package:pulumi/pulumi.dart';
import 'get_workgroup_args.dart';
import 'get_workgroup_result.dart';

/// Data source for managing an AWS Redshift Serverless Workgroup.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetWorkgroupResult> getWorkgroup(
  GetWorkgroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshiftserverless/getWorkgroup:getWorkgroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkgroupResult.fromMap(result);
}
