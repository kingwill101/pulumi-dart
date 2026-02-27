import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_elb_args.dart';
import 'get_load_balancer_elb_result.dart';

/// Provides information about a "classic" Elastic Load Balancer (ELB).
/// See LB Data Source if you are looking for "v2"
/// Application Load Balancer (ALB) or Network Load Balancer (NLB).
///
/// This data source can prove useful when a module accepts an LB as an input
/// variable and needs to, for example, determine the security groups associated
/// with it, etc.
Future<GetLoadBalancerElbResult> getLoadBalancerElb(
  GetLoadBalancerElbArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elb/getLoadBalancer:getLoadBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerElbResult.fromMap(result);
}
