// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_endpoint_timeouts.dart';

/// Input properties used for looking up and filtering RouteServerEndpoint resources.
class RouteServerEndpointState {
  /// ARN of the route server endpoint.
  final pulumi.Input<String?>? arn;
  /// IP address of the Elastic network interface for the endpoint.
  final pulumi.Input<String?>? eniAddress;
  /// ID of the Elastic network interface for the endpoint.
  final pulumi.Input<String?>? eniId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Unique identifier of the route server endpoint.
  final pulumi.Input<String?>? routeServerEndpointId;
  /// ID of the route server for which to create an endpoint.
  final pulumi.Input<String?>? routeServerId;
  /// ID of the subnet in which to create the route server endpoint.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? subnetId;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<RouteServerEndpointTimeouts?>? timeouts;
  /// ID of the VPC containing the endpoint.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [RouteServerEndpointState].
  /// [arn] ARN of the route server endpoint.
  /// [eniAddress] IP address of the Elastic network interface for the endpoint.
  /// [eniId] ID of the Elastic network interface for the endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeServerEndpointId] Unique identifier of the route server endpoint.
  /// [routeServerId] ID of the route server for which to create an endpoint.
  /// [subnetId] ID of the subnet in which to create the route server endpoint.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [vpcId] ID of the VPC containing the endpoint.
  const RouteServerEndpointState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eniAddress: (() { final guardedValue = map['eniAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eniId: (() { final guardedValue = map['eniId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeServerEndpointId: (() { final guardedValue = map['routeServerEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeServerId: (() { final guardedValue = map['routeServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteServerEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
