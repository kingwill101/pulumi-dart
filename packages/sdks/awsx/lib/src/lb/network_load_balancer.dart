import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_load_balancer_args.dart';
import 'package:pulumi_aws/lb.dart' as pulumi_aws_lb;

/// Provides a Network Load Balancer resource with listeners and default target group.
class NetworkLoadBalancer extends pulumi.ComponentResource {
  /// Default target group, if auto-created
  late final pulumi.Output<pulumi_aws_lb.TargetGroup?> defaultTargetGroup;
  /// Listeners created as part of this load balancer
  late final pulumi.Output<List<pulumi_aws_lb.Listener>?> listeners;
  /// Underlying Load Balancer resource
  late final pulumi.Output<pulumi_aws_lb.LoadBalancer?> loadBalancer;
  /// Id of the VPC in which this load balancer is operating
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [NetworkLoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkLoadBalancer]. {@macro pulumi_lb_network_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkLoadBalancer(
    String name, {
    NetworkLoadBalancerArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'awsx:lb:NetworkLoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '3.9.0').merge(options),
          remote: true,
        ) {
    defaultTargetGroup = registerOutput<pulumi_aws_lb.TargetGroup?>('defaultTargetGroup');
    listeners = registerOutput<List<pulumi_aws_lb.Listener>?>('listeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<pulumi_aws_lb.Listener>(); });
    loadBalancer = registerOutput<pulumi_aws_lb.LoadBalancer?>('loadBalancer');
    vpcId = registerOutput<String?>('vpcId');
  }
}
