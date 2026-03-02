// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the threshold for declaring a test successful.
class ConnectionMonitorSuccessThreshold {
  /// The maximum percentage of failed checks permitted for a test to evaluate as successful.
  final pulumi.Input<int>? checksFailedPercent;
  /// The maximum round-trip time in milliseconds permitted for a test to evaluate as successful.
  final pulumi.Input<double>? roundTripTimeMs;

  /// Creates a new [ConnectionMonitorSuccessThreshold].
  /// [checksFailedPercent] The maximum percentage of failed checks permitted for a test to evaluate as successful.
  /// [roundTripTimeMs] The maximum round-trip time in milliseconds permitted for a test to evaluate as successful.
  ConnectionMonitorSuccessThreshold({
    this.checksFailedPercent,
    this.roundTripTimeMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksFailedPercent': ?checksFailedPercent,
      'roundTripTimeMs': ?roundTripTimeMs,
    };
  }

  factory ConnectionMonitorSuccessThreshold.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorSuccessThreshold(
      checksFailedPercent: map['checksFailedPercent'] == null ? null : (map['checksFailedPercent']! as int).input(),
      roundTripTimeMs: map['roundTripTimeMs'] == null ? null : (map['roundTripTimeMs']! as double).input(),
    );
  }
}

