// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointZone resources.
class VpcEndpointZoneState {
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The endpoint ID.
  final pulumi.Input<String>? endpointId;
  /// The IP address of the endpoint ENI.
  final pulumi.Input<String>? eniIp;
  /// (Available since v1.235.0) The ID of the region to which the endpoint service belongs.
  final pulumi.Input<String>? regionId;
  /// The state of the zone.
  final pulumi.Input<String>? status;
  /// The ID of the vSwitch in the zone.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [VpcEndpointZoneState].
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [endpointId] The endpoint ID.
  /// [eniIp] The IP address of the endpoint ENI.
  /// [regionId] (Available since v1.235.0) The ID of the region to which the endpoint service belongs.
  /// [status] The state of the zone.
  /// [vswitchId] The ID of the vSwitch in the zone.
  /// [zoneId] The zone ID.
  VpcEndpointZoneState({
    this.dryRun,
    this.endpointId,
    this.eniIp,
    this.regionId,
    this.status,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'endpointId': ?endpointId,
      'eniIp': ?eniIp,
      'regionId': ?regionId,
      'status': ?status,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory VpcEndpointZoneState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointZoneState(
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      endpointId: map['endpointId'] == null ? null : (map['endpointId'] as String).input(),
      eniIp: map['eniIp'] == null ? null : (map['eniIp'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

