// ignore_for_file: unused_element, unnecessary_cast


class GetBrokerLogs {
  /// Whether audit logging is enabled.
  final bool audit;
  /// Whether general logging is enabled.
  final bool general;

  /// Creates a new [GetBrokerLogs].
  /// [audit] Whether audit logging is enabled.
  /// [general] Whether general logging is enabled.
  GetBrokerLogs({
    required this.audit,
    required this.general,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audit': audit,
      'general': general,
    };
  }

  factory GetBrokerLogs.fromMap(Map<String, dynamic> map) {
    return GetBrokerLogs(
      audit: map['audit'] as bool,
      general: map['general'] as bool,
    );
  }
}

