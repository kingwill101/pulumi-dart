// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_vpc_endpoint_zone_vpc_endpoint_zone_args_doc}
/// The set of arguments for VpcEndpointZone.
/// {@endtemplate}
/// {@macro pulumi_privatelink_vpc_endpoint_zone_vpc_endpoint_zone_args_doc}
class VpcEndpointZoneArgs {
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The endpoint ID.
  final pulumi.Input<String> endpointId;
  /// The IP address of the endpoint ENI.
  final pulumi.Input<String>? eniIp;
  /// The ID of the vSwitch in the zone.
  final pulumi.Input<String> vswitchId;
  /// The zone ID.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [VpcEndpointZoneArgs].
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [endpointId] The endpoint ID.
  /// [eniIp] The IP address of the endpoint ENI.
  /// [vswitchId] The ID of the vSwitch in the zone.
  /// [zoneId] The zone ID.
  VpcEndpointZoneArgs({
    bool? dryRun,
    required String endpointId,
    String? eniIp,
    required String vswitchId,
    String? zoneId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      endpointId = pulumi.Input.asInput<String>(endpointId),
      eniIp = pulumi.Input.asOptionalInput<String>(eniIp),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'endpointId': endpointId,
      'eniIp': ?eniIp,
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory VpcEndpointZoneArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointZoneArgs(
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      endpointId: map['endpointId'] as String,
      eniIp: map['eniIp'] == null ? null : map['eniIp'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

