// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// High availability properties of a server
class HighAvailability {
  /// High availability mode for a server.
  final pulumi.Input<String>? mode;
  /// Availability zone of the standby server.
  final pulumi.Input<String>? standbyAvailabilityZone;

  /// Creates a new [HighAvailability].
  /// [mode] High availability mode for a server.
  /// [standbyAvailabilityZone] Availability zone of the standby server.
  const HighAvailability({
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
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyAvailabilityZone: (() { final guardedValue = map['standbyAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
