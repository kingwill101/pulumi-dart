// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionRateLimiterStatus {
  /// Number of rate limiters currently in use.
  final pulumi.Input<int> inUse;
  /// Maximum number of rate limiters allowed on the connection.
  final pulumi.Input<int> maxAllowed;
  /// Number of rate limiters remaining (available).
  final pulumi.Input<int> remaining;
  /// Total bandwidth allocated across all rate limiters.
  final pulumi.Input<String> totalBandwidth;

  /// Creates a new [GetConnectionRateLimiterStatus].
  /// [inUse] Number of rate limiters currently in use.
  /// [maxAllowed] Maximum number of rate limiters allowed on the connection.
  /// [remaining] Number of rate limiters remaining (available).
  /// [totalBandwidth] Total bandwidth allocated across all rate limiters.
  const GetConnectionRateLimiterStatus({
    required this.inUse,
    required this.maxAllowed,
    required this.remaining,
    required this.totalBandwidth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inUse': inUse,
      'maxAllowed': maxAllowed,
      'remaining': remaining,
      'totalBandwidth': totalBandwidth,
    };
  }

  factory GetConnectionRateLimiterStatus.fromMap(Map<String, dynamic> map) {
    return GetConnectionRateLimiterStatus(
      inUse: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['inUse'])),
      maxAllowed: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxAllowed'])),
      remaining: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['remaining'])),
      totalBandwidth: pulumi.Input.fromValue(map['totalBandwidth'] as String),
    );
  }
}
