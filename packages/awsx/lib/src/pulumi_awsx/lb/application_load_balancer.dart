import 'package:pulumi/pulumi.dart';
import 'application_load_balancer_args.dart';

/// Provides an Application Load Balancer resource with listeners, default target group and default security group.
class ApplicationLoadBalancer extends ComponentResource {
  /// Default security group, if auto-created
  late final Output<dynamic> defaultSecurityGroup;

  /// Default target group, if auto-created
  late final Output<dynamic> defaultTargetGroup;

  /// Listeners created as part of this load balancer
  late final Output<List<dynamic>?> listeners;

  /// Underlying Load Balancer resource
  late final Output<dynamic> loadBalancer;

  /// Id of the VPC in which this load balancer is operating
  late final Output<String?> vpcId;

  ApplicationLoadBalancer(
    String name, {
    ApplicationLoadBalancerArgs? args,
    ComponentResourceOptions? options,
  }) : super(
          'awsx:lb:ApplicationLoadBalancer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? ComponentResourceOptions(),
        ) {
    this.defaultSecurityGroup = registerOutput<dynamic>('defaultSecurityGroup');
    this.defaultTargetGroup = registerOutput<dynamic>('defaultTargetGroup');
    this.listeners = registerOutput<List<dynamic>?>('listeners');
    this.loadBalancer = registerOutput<dynamic>('loadBalancer');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}
