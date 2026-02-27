import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_group_args.dart';
import 'get_target_group_result.dart';

/// > **Note:** `aws.alb.TargetGroup` is known as `aws.lb.TargetGroup`. The functionality is identical.
///
/// Provides information about a Load Balancer Target Group.
///
/// This data source can prove useful when a module accepts an LB Target Group as an
/// input variable and needs to know its attributes. It can also be used to get the ARN of
/// an LB Target Group for use in other resources, given LB Target Group name.
Future<GetTargetGroupResult> getTargetGroup(
  GetTargetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:alb/getTargetGroup:getTargetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetGroupResult.fromMap(result);
}
