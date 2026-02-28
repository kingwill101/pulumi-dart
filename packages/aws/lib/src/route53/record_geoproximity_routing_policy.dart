// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_geoproximity_routing_policy_coordinate.dart';

class RecordGeoproximityRoutingPolicy {
  /// A AWS region where the resource is present.
  final String? awsRegion;

  /// Route more traffic or less traffic to the resource by specifying a value ranges between -90 to 90. See https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy-geoproximity.html for bias details.
  final int? bias;

  /// Specify `latitude` and `longitude` for routing traffic to non-AWS resources.
  final List<RecordGeoproximityRoutingPolicyCoordinate>? coordinates;

  /// A AWS local zone group where the resource is present. See https://docs.aws.amazon.com/local-zones/latest/ug/available-local-zones.html for local zone group list.
  final String? localZoneGroup;

  /// Creates a new [RecordGeoproximityRoutingPolicy].
  /// [awsRegion] A AWS region where the resource is present.
  /// [bias] Route more traffic or less traffic to the resource by specifying a value ranges between -90 to 90. See https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy-geoproximity.html for bias details.
  /// [coordinates] Specify `latitude` and `longitude` for routing traffic to non-AWS resources.
  /// [localZoneGroup] A AWS local zone group where the resource is present. See https://docs.aws.amazon.com/local-zones/latest/ug/available-local-zones.html for local zone group list.
  RecordGeoproximityRoutingPolicy({
    this.awsRegion,
    this.bias,
    this.coordinates,
    this.localZoneGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsRegionValue = awsRegion;
    if (awsRegionValue != null) {
      map['awsRegion'] = awsRegionValue;
    }
    final biasValue = bias;
    if (biasValue != null) {
      map['bias'] = biasValue;
    }
    final coordinatesValue = coordinates;
    if (coordinatesValue != null) {
      map['coordinates'] = pulumi.Input.encodeList<
          RecordGeoproximityRoutingPolicyCoordinate,
          Map<String, dynamic>>(coordinatesValue, (value) => value.toMap());
    }
    final localZoneGroupValue = localZoneGroup;
    if (localZoneGroupValue != null) {
      map['localZoneGroup'] = localZoneGroupValue;
    }
    return map;
  }

  factory RecordGeoproximityRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordGeoproximityRoutingPolicy(
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      bias: map['bias'] == null ? null : map['bias'] as int,
      coordinates: map['coordinates'] == null
          ? null
          : pulumi.Input.decodeList<RecordGeoproximityRoutingPolicyCoordinate>(
              map['coordinates'],
              (value) => RecordGeoproximityRoutingPolicyCoordinate.fromMap(
                  (value as Map).cast<String, dynamic>())),
      localZoneGroup: map['localZoneGroup'] == null
          ? null
          : map['localZoneGroup'] as String,
    );
  }
}
