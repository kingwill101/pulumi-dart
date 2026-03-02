// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// High availability properties of a server
class HighAvailabilityResponse {
  /// High availability mode for a server.
  final pulumi.Input<String>? mode;
  /// Availability zone of the standby server.
  final pulumi.Input<String>? standbyAvailabilityZone;
  /// The state of server high availability.
  final pulumi.Input<String> state;

  /// Creates a new [HighAvailabilityResponse].
  /// [mode] High availability mode for a server.
  /// [standbyAvailabilityZone] Availability zone of the standby server.
  /// [state] The state of server high availability.
  HighAvailabilityResponse({
    this.mode,
    this.standbyAvailabilityZone,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'standbyAvailabilityZone': ?standbyAvailabilityZone,
      'state': state,
    };
  }

  factory HighAvailabilityResponse.fromMap(Map<String, dynamic> map) {
    return HighAvailabilityResponse(
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      standbyAvailabilityZone: map['standbyAvailabilityZone'] == null ? null : (map['standbyAvailabilityZone']! as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

