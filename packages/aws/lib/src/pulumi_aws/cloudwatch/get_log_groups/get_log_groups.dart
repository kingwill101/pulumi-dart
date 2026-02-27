import 'package:pulumi/pulumi.dart';
import 'get_log_groups_args.dart';
import 'get_log_groups_result.dart';

/// Use this data source to get a list of AWS Cloudwatch Log Groups
Future<GetLogGroupsResult> getLogGroups(
  GetLogGroupsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getLogGroups:getLogGroups',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLogGroupsResult.fromMap(result);
}
