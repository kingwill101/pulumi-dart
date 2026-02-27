import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_group_args.dart';
import 'get_log_group_result.dart';

/// Use this data source to get information about an AWS Cloudwatch Log Group
Future<GetLogGroupResult> getLogGroup(
  GetLogGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getLogGroup:getLogGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogGroupResult.fromMap(result);
}
