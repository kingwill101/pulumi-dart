// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_geoproximity_routing_policy_coordinate.dart';

class RecordGeoproximityRoutingPolicy {
  /// A AWS region where the resource is present.
  final pulumi.Input<String>? awsRegion;
  /// Route more traffic or less traffic to the resource by specifying a value ranges between -90 to 90. See https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy-geoproximity.html for bias details.
  final pulumi.Input<int>? bias;
  /// Specify `latitude` and `longitude` for routing traffic to non-AWS resources.
  final pulumi.Input<List<RecordGeoproximityRoutingPolicyCoordinate>>? coordinates;
  /// A AWS local zone group where the resource is present. See https://docs.aws.amazon.com/local-zones/latest/ug/available-local-zones.html for local zone group list.
  final pulumi.Input<String>? localZoneGroup;

  /// Creates a new [RecordGeoproximityRoutingPolicy].
  /// [awsRegion] A AWS region where the resource is present.
  /// [bias] Route more traffic or less traffic to the resource by specifying a value ranges between -90 to 90. See https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy-geoproximity.html for bias details.
  /// [coordinates] Specify `latitude` and `longitude` for routing traffic to non-AWS resources.
  /// [localZoneGroup] A AWS local zone group where the resource is present. See https://docs.aws.amazon.com/local-zones/latest/ug/available-local-zones.html for local zone group list.
  const RecordGeoproximityRoutingPolicy({
    this.awsRegion,
    this.bias,
    this.coordinates,
    this.localZoneGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': ?awsRegion,
      'bias': ?bias,
      'coordinates': ?pulumi.Input.mapOptionalInputValue<List<RecordGeoproximityRoutingPolicyCoordinate>, List<Map<String, dynamic>>>(coordinates, (value) => pulumi.Input.encodeList<RecordGeoproximityRoutingPolicyCoordinate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localZoneGroup': ?localZoneGroup,
    };
  }

  factory RecordGeoproximityRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordGeoproximityRoutingPolicy(
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bias: (() { final guardedValue = map['bias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      coordinates: (() { final guardedValue = map['coordinates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecordGeoproximityRoutingPolicyCoordinate>(guardedValue, (value) => RecordGeoproximityRoutingPolicyCoordinate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localZoneGroup: (() { final guardedValue = map['localZoneGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

