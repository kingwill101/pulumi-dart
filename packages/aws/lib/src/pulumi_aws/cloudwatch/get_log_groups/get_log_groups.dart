import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_groups_args.dart';
import 'get_log_groups_result.dart';

/// Use this data source to get a list of AWS Cloudwatch Log Groups
Future<GetLogGroupsResult> getLogGroups(
  GetLogGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getLogGroups:getLogGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogGroupsResult.fromMap(result);
}
