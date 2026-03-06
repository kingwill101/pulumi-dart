// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LandingZoneDriftStatus {
  /// The drift status of the landing zone.
  final pulumi.Input<String>? status;

  /// Creates a new [LandingZoneDriftStatus].
  /// [status] The drift status of the landing zone.
  const LandingZoneDriftStatus({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory LandingZoneDriftStatus.fromMap(Map<String, dynamic> map) {
    return LandingZoneDriftStatus(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

