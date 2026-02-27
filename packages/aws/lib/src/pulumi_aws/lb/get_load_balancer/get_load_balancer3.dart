import 'package:pulumi/pulumi.dart';
import 'get_load_balancer_args3.dart';
import 'get_load_balancer_result3.dart';

/// > **Note:** `aws.alb.LoadBalancer` is known as `aws.lb.LoadBalancer`. The functionality is identical.
///
/// Provides information about a Load Balancer.
///
/// This data source can prove useful when a module accepts an LB as an input
/// variable and needs to, for example, determine the security groups associated
/// with it, etc.
Future<GetLoadBalancerResult3> getLoadBalancer3(
  GetLoadBalancerArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getLoadBalancer:getLoadBalancer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerResult3.fromMap(result);
}
