// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointServiceResource resources.
class VpcEndpointServiceResourceState {
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// (Available since v1.235.0) The ID of the region where the service resource is deployed.
  final pulumi.Input<String>? regionId;
  /// The service resource ID.
  final pulumi.Input<String>? resourceId;
  /// Service resource type, value:
  final pulumi.Input<String>? resourceType;
  /// The endpoint service ID.
  final pulumi.Input<String>? serviceId;
  /// The ID of the zone to which the service resource belongs. (valid when the resource type is nlb/alb).
  final pulumi.Input<String>? zoneId;

  /// Creates a new [VpcEndpointServiceResourceState].
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [regionId] (Available since v1.235.0) The ID of the region where the service resource is deployed.
  /// [resourceId] The service resource ID.
  /// [resourceType] Service resource type, value:
  /// [serviceId] The endpoint service ID.
  /// [zoneId] The ID of the zone to which the service resource belongs. (valid when the resource type is nlb/alb).
  VpcEndpointServiceResourceState({
    this.dryRun,
    this.regionId,
    this.resourceId,
    this.resourceType,
    this.serviceId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'regionId': ?regionId,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'serviceId': ?serviceId,
      'zoneId': ?zoneId,
    };
  }

  factory VpcEndpointServiceResourceState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceResourceState(
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

