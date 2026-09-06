// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// High availability properties of a server.
class HighAvailabilityResponse {
  /// High availability mode for a server.
  final pulumi.Input<String?>? mode;
  /// Availability zone associated to the standby server created when high availability is set to SameZone or ZoneRedundant.
  final pulumi.Input<String?>? standbyAvailabilityZone;
  /// Possible states of the standby server created when high availability is set to SameZone or ZoneRedundant.
  final pulumi.Input<String> state;

  /// Creates a new [HighAvailabilityResponse].
  /// [mode] High availability mode for a server.
  /// [standbyAvailabilityZone] Availability zone associated to the standby server created when high availability is set to SameZone or ZoneRedundant.
  /// [state] Possible states of the standby server created when high availability is set to SameZone or ZoneRedundant.
  HighAvailabilityResponse({
    pulumi.Input<String?>? mode,
    pulumi.Input<String?>? standbyAvailabilityZone,
    required this.state,
  }) : mode = mode ?? pulumi.Input.fromValue('Disabled'), standbyAvailabilityZone = standbyAvailabilityZone ?? pulumi.Input.fromValue('');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'standbyAvailabilityZone': ?standbyAvailabilityZone,
      'state': state,
    };
  }

  factory HighAvailabilityResponse.fromMap(Map<String, dynamic> map) {
    return HighAvailabilityResponse(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyAvailabilityZone: (() { final guardedValue = map['standbyAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
