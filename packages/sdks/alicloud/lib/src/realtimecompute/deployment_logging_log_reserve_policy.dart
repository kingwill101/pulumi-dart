// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentLoggingLogReservePolicy {
  /// Number of days to retain logs after log retention is enabled
  final pulumi.Input<int>? expirationDays;

  /// Whether to enable log retention
  final pulumi.Input<bool>? openHistory;

  /// Creates a new [DeploymentLoggingLogReservePolicy].
  /// [expirationDays] Number of days to retain logs after log retention is enabled
  /// [openHistory] Whether to enable log retention
  DeploymentLoggingLogReservePolicy({this.expirationDays, this.openHistory});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDays': ?expirationDays,
      'openHistory': ?openHistory,
    };
  }

  factory DeploymentLoggingLogReservePolicy.fromMap(Map<String, dynamic> map) {
    return DeploymentLoggingLogReservePolicy(
      expirationDays: (() {
        final guardedValue = map['expirationDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      openHistory: (() {
        final guardedValue = map['openHistory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
