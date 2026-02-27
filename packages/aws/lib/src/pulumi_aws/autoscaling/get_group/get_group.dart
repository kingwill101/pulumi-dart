import 'package:pulumi/pulumi.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';

/// Use this data source to get information on an existing autoscaling group.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:autoscaling/getGroup:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}
