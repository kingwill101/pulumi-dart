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
    this.arn,
    this.eniAddress,
    this.eniId,
    this.region,
    this.routeServerEndpointId,
    this.routeServerId,
    this.subnetId,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcId,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      eniAddress: map['eniAddress'] == null ? null : ((map['eniAddress'] as String).input()).input(),
      eniId: map['eniId'] == null ? null : ((map['eniId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routeServerEndpointId: map['routeServerEndpointId'] == null ? null : ((map['routeServerEndpointId'] as String).input()).input(),
      routeServerId: map['routeServerId'] == null ? null : ((map['routeServerId'] as String).input()).input(),
      subnetId: map['subnetId'] == null ? null : ((map['subnetId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((RouteServerEndpointTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

