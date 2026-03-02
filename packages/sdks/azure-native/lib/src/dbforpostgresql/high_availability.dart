// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// High availability properties of a server.
class HighAvailability {
  /// High availability mode for a server.
  final pulumi.Input<String>? mode;
  /// Availability zone associated to the standby server created when high availability is set to SameZone or ZoneRedundant.
  final pulumi.Input<String>? standbyAvailabilityZone;

  /// Creates a new [HighAvailability].
  /// [mode] High availability mode for a server.
  /// [standbyAvailabilityZone] Availability zone associated to the standby server created when high availability is set to SameZone or ZoneRedundant.
  HighAvailability({
    this.mode,
    this.standbyAvailabilityZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'standbyAvailabilityZone': ?standbyAvailabilityZone,
    };
  }

  factory HighAvailability.fromMap(Map<String, dynamic> map) {
    return HighAvailability(
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      standbyAvailabilityZone: map['standbyAvailabilityZone'] == null ? null : (map['standbyAvailabilityZone'] as String).input(),
    );
  }
}

