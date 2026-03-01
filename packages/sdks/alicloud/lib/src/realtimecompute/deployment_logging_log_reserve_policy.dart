// ignore_for_file: unused_element, unnecessary_cast


class DeploymentLoggingLogReservePolicy {
  /// Number of days to retain logs after log retention is enabled
  final int? expirationDays;
  /// Whether to enable log retention
  final bool? openHistory;

  /// Creates a new [DeploymentLoggingLogReservePolicy].
  /// [expirationDays] Number of days to retain logs after log retention is enabled
  /// [openHistory] Whether to enable log retention
  DeploymentLoggingLogReservePolicy({
    this.expirationDays,
    this.openHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDays': ?expirationDays,
      'openHistory': ?openHistory,
    };
  }

  factory DeploymentLoggingLogReservePolicy.fromMap(Map<String, dynamic> map) {
    return DeploymentLoggingLogReservePolicy(
      expirationDays: map['expirationDays'] == null ? null : map['expirationDays'] as int,
      openHistory: map['openHistory'] == null ? null : map['openHistory'] as bool,
    );
  }
}

