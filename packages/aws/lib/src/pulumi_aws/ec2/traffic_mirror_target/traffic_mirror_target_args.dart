// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TrafficMirrorTarget.
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

  TrafficMirrorTargetArgs({
    this.description,
    this.gatewayLoadBalancerEndpointId,
    this.networkInterfaceId,
    this.networkLoadBalancerArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final gatewayLoadBalancerEndpointIdValue = gatewayLoadBalancerEndpointId;
    if (gatewayLoadBalancerEndpointIdValue != null) {
      map['gatewayLoadBalancerEndpointId'] = gatewayLoadBalancerEndpointIdValue;
    }
    final networkInterfaceIdValue = networkInterfaceId;
    if (networkInterfaceIdValue != null) {
      map['networkInterfaceId'] = networkInterfaceIdValue;
    }
    final networkLoadBalancerArnValue = networkLoadBalancerArn;
    if (networkLoadBalancerArnValue != null) {
      map['networkLoadBalancerArn'] = networkLoadBalancerArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TrafficMirrorTargetArgs.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorTargetArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      gatewayLoadBalancerEndpointId: pulumi.Input.asOptionalInput<String>(
          map['gatewayLoadBalancerEndpointId']),
      networkInterfaceId:
          pulumi.Input.asOptionalInput<String>(map['networkInterfaceId']),
      networkLoadBalancerArn:
          pulumi.Input.asOptionalInput<String>(map['networkLoadBalancerArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
