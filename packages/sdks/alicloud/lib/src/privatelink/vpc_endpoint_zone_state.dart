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
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? endpointId,
    pulumi.Output<String>? eniIp,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      eniIp = pulumi.Input.asOptionalInput<String>(eniIp),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      endpointId: map['endpointId'] == null ? null : pulumi.Output.create<String>(map['endpointId'] as String),
      eniIp: map['eniIp'] == null ? null : pulumi.Output.create<String>(map['eniIp'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

