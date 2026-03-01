// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_endpoint_timeouts.dart';

/// Input properties used for looking up and filtering RouteServerEndpoint resources.
class RouteServerEndpointState {
  /// The ARN of the route server endpoint.
  final pulumi.Input<String>? arn;
  /// The IP address of the Elastic network interface for the endpoint.
  final pulumi.Input<String>? eniAddress;
  /// The ID of the Elastic network interface for the endpoint.
  final pulumi.Input<String>? eniId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The unique identifier of the route server endpoint.
  final pulumi.Input<String>? routeServerEndpointId;
  /// The ID of the route server for which to create an endpoint.
  final pulumi.Input<String>? routeServerId;
  /// The ID of the subnet in which to create the route server endpoint.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? subnetId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<RouteServerEndpointTimeouts>? timeouts;
  /// The ID of the VPC containing the endpoint.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [RouteServerEndpointState].
  /// [arn] The ARN of the route server endpoint.
  /// [eniAddress] The IP address of the Elastic network interface for the endpoint.
  /// [eniId] The ID of the Elastic network interface for the endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeServerEndpointId] The unique identifier of the route server endpoint.
  /// [routeServerId] The ID of the route server for which to create an endpoint.
  /// [subnetId] The ID of the subnet in which to create the route server endpoint.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [vpcId] The ID of the VPC containing the endpoint.
  RouteServerEndpointState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? eniAddress,
    pulumi.Output<String>? eniId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routeServerEndpointId,
    pulumi.Output<String>? routeServerId,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<RouteServerEndpointTimeouts>? timeouts,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      eniAddress = pulumi.Input.asOptionalInput<String>(eniAddress),
      eniId = pulumi.Input.asOptionalInput<String>(eniId),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeServerEndpointId = pulumi.Input.asOptionalInput<String>(routeServerEndpointId),
      routeServerId = pulumi.Input.asOptionalInput<String>(routeServerId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<RouteServerEndpointTimeouts>(timeouts),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'eniAddress': ?eniAddress,
      'eniId': ?eniId,
      'region': ?region,
      'routeServerEndpointId': ?routeServerEndpointId,
      'routeServerId': ?routeServerId,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RouteServerEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory RouteServerEndpointState.fromMap(Map<String, dynamic> map) {
    return RouteServerEndpointState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      eniAddress: map['eniAddress'] == null ? null : pulumi.Output.create<String>(map['eniAddress'] as String),
      eniId: map['eniId'] == null ? null : pulumi.Output.create<String>(map['eniId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeServerEndpointId: map['routeServerEndpointId'] == null ? null : pulumi.Output.create<String>(map['routeServerEndpointId'] as String),
      routeServerId: map['routeServerId'] == null ? null : pulumi.Output.create<String>(map['routeServerId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<RouteServerEndpointTimeouts>(RouteServerEndpointTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

