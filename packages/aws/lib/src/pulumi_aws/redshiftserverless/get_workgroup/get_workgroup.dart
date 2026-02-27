import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workgroup_args.dart';
import 'get_workgroup_result.dart';

/// Data source for managing an AWS Redshift Serverless Workgroup.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetWorkgroupResult> getWorkgroup(
  GetWorkgroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshiftserverless/getWorkgroup:getWorkgroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkgroupResult.fromMap(result);
}
