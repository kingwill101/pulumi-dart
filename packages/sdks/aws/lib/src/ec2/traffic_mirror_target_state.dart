// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficMirrorTarget resources.
class TrafficMirrorTargetState {
  /// The ARN of the traffic mirror target.
  final pulumi.Input<String>? arn;
  /// A description of the traffic mirror session.
  final pulumi.Input<String>? description;
  /// The VPC Endpoint Id of the Gateway Load Balancer that is associated with the target.
  final pulumi.Input<String>? gatewayLoadBalancerEndpointId;
  /// The network interface ID that is associated with the target.
  final pulumi.Input<String>? networkInterfaceId;
  /// The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
  final pulumi.Input<String>? networkLoadBalancerArn;
  /// The ID of the AWS account that owns the traffic mirror target.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **NOTE:** Either `network_interface_id` or `network_load_balancer_arn` should be specified and both should not be specified together
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [TrafficMirrorTargetState].
  /// [arn] The ARN of the traffic mirror target.
  /// [description] A description of the traffic mirror session.
  /// [gatewayLoadBalancerEndpointId] The VPC Endpoint Id of the Gateway Load Balancer that is associated with the target.
  /// [networkInterfaceId] The network interface ID that is associated with the target.
  /// [networkLoadBalancerArn] The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
  /// [ownerId] The ID of the AWS account that owns the traffic mirror target.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  TrafficMirrorTargetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? gatewayLoadBalancerEndpointId,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? networkLoadBalancerArn,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      gatewayLoadBalancerEndpointId = pulumi.Input.asOptionalInput<String>(gatewayLoadBalancerEndpointId),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      networkLoadBalancerArn = pulumi.Input.asOptionalInput<String>(networkLoadBalancerArn),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'gatewayLoadBalancerEndpointId': ?gatewayLoadBalancerEndpointId,
      'networkInterfaceId': ?networkInterfaceId,
      'networkLoadBalancerArn': ?networkLoadBalancerArn,
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory TrafficMirrorTargetState.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorTargetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      gatewayLoadBalancerEndpointId: map['gatewayLoadBalancerEndpointId'] == null ? null : pulumi.Output.create<String>(map['gatewayLoadBalancerEndpointId'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      networkLoadBalancerArn: map['networkLoadBalancerArn'] == null ? null : pulumi.Output.create<String>(map['networkLoadBalancerArn'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

