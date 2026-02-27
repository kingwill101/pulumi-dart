import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_lb_args.dart';
import 'get_load_balancer_lb_result.dart';

/// > **Note:** `aws.alb.LoadBalancer` is known as `aws.lb.LoadBalancer`. The functionality is identical.
///
/// Provides information about a Load Balancer.
///
/// This data source can prove useful when a module accepts an LB as an input
/// variable and needs to, for example, determine the security groups associated
/// with it, etc.
Future<GetLoadBalancerLbResult> getLoadBalancerLb(
  GetLoadBalancerLbArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getLoadBalancer:getLoadBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerLbResult.fromMap(result);
}
