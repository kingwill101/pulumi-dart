// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_traffic_mirror_target_traffic_mirror_target_args_doc}
/// The set of arguments for TrafficMirrorTarget.
/// {@endtemplate}
/// {@macro pulumi_ec2_traffic_mirror_target_traffic_mirror_target_args_doc}
class TrafficMirrorTargetArgs {
  /// A description of the traffic mirror session.
  final pulumi.Input<String>? description;
  /// The VPC Endpoint Id of the Gateway Load Balancer that is associated with the target.
  final pulumi.Input<String>? gatewayLoadBalancerEndpointId;
  /// The network interface ID that is associated with the target.
  final pulumi.Input<String>? networkInterfaceId;
  /// The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
  final pulumi.Input<String>? networkLoadBalancerArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **NOTE:** Either `network_interface_id` or `network_load_balancer_arn` should be specified and both should not be specified together
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TrafficMirrorTargetArgs].
  /// [description] A description of the traffic mirror session.
  /// [gatewayLoadBalancerEndpointId] The VPC Endpoint Id of the Gateway Load Balancer that is associated with the target.
  /// [networkInterfaceId] The network interface ID that is associated with the target.
  /// [networkLoadBalancerArn] The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  TrafficMirrorTargetArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? gatewayLoadBalancerEndpointId,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? networkLoadBalancerArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      gatewayLoadBalancerEndpointId = pulumi.Input.asOptionalInput<String>(gatewayLoadBalancerEndpointId),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      networkLoadBalancerArn = pulumi.Input.asOptionalInput<String>(networkLoadBalancerArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gatewayLoadBalancerEndpointId': ?gatewayLoadBalancerEndpointId,
      'networkInterfaceId': ?networkInterfaceId,
      'networkLoadBalancerArn': ?networkLoadBalancerArn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory TrafficMirrorTargetArgs.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorTargetArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      gatewayLoadBalancerEndpointId: map['gatewayLoadBalancerEndpointId'] == null ? null : pulumi.Output.create<String>(map['gatewayLoadBalancerEndpointId'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      networkLoadBalancerArn: map['networkLoadBalancerArn'] == null ? null : pulumi.Output.create<String>(map['networkLoadBalancerArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

