import 'package:pulumi/pulumi.dart';
import 'get_load_balancer_args2.dart';
import 'get_load_balancer_result2.dart';

/// Provides information about a "classic" Elastic Load Balancer (ELB).
/// See LB Data Source if you are looking for "v2"
/// Application Load Balancer (ALB) or Network Load Balancer (NLB).
///
/// This data source can prove useful when a module accepts an LB as an input
/// variable and needs to, for example, determine the security groups associated
/// with it, etc.
Future<GetLoadBalancerResult2> getLoadBalancer2(
  GetLoadBalancerArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elb/getLoadBalancer:getLoadBalancer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerResult2.fromMap(result);
}
