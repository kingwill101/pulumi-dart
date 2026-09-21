// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionRateLimiterStatus {
  /// Number of rate limiters currently in use.
  final pulumi.Input<int?>? inUse;
  /// Maximum number of rate limiters allowed on the connection.
  final pulumi.Input<int?>? maxAllowed;
  /// Number of rate limiters remaining (available).
  final pulumi.Input<int?>? remaining;
  /// Total bandwidth allocated across all rate limiters.
  final pulumi.Input<String?>? totalBandwidth;

  /// Creates a new [ConnectionRateLimiterStatus].
  /// [inUse] Number of rate limiters currently in use.
  /// [maxAllowed] Maximum number of rate limiters allowed on the connection.
  /// [remaining] Number of rate limiters remaining (available).
  /// [totalBandwidth] Total bandwidth allocated across all rate limiters.
  const ConnectionRateLimiterStatus({
    this.inUse,
    this.maxAllowed,
    this.remaining,
    this.totalBandwidth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inUse': ?inUse,
      'maxAllowed': ?maxAllowed,
      'remaining': ?remaining,
      'totalBandwidth': ?totalBandwidth,
    };
  }

  factory ConnectionRateLimiterStatus.fromMap(Map<String, dynamic> map) {
    return ConnectionRateLimiterStatus(
      inUse: (() { final guardedValue = map['inUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxAllowed: (() { final guardedValue = map['maxAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      remaining: (() { final guardedValue = map['remaining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      totalBandwidth: (() { final guardedValue = map['totalBandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
