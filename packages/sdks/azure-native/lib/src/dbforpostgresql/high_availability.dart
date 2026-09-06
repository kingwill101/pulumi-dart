// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// High availability properties of a server.
class HighAvailability {
  /// High availability mode for a server.
  final pulumi.Input<dynamic>? mode;
  /// Availability zone associated to the standby server created when high availability is set to SameZone or ZoneRedundant.
  final pulumi.Input<String?>? standbyAvailabilityZone;

  /// Creates a new [HighAvailability].
  /// [mode] High availability mode for a server.
  /// [standbyAvailabilityZone] Availability zone associated to the standby server created when high availability is set to SameZone or ZoneRedundant.
  HighAvailability({
    pulumi.Input<dynamic>? mode,
    pulumi.Input<String?>? standbyAvailabilityZone,
  }) : mode = mode ?? pulumi.Input.fromValue('Disabled'), standbyAvailabilityZone = standbyAvailabilityZone ?? pulumi.Input.fromValue('');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'standbyAvailabilityZone': ?standbyAvailabilityZone,
    };
  }

  factory HighAvailability.fromMap(Map<String, dynamic> map) {
    return HighAvailability(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      standbyAvailabilityZone: (() { final guardedValue = map['standbyAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
