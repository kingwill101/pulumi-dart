// ignore_for_file: unused_element, unnecessary_cast

class GetBrokerLogs {
  /// Whether audit logging is enabled.
  final bool audit;

  /// Whether general logging is enabled.
  final bool general;

  GetBrokerLogs({
    required this.audit,
    required this.general,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audit'] = audit;
    map['general'] = general;
    return map;
  }

  factory GetBrokerLogs.fromMap(Map<String, dynamic> map) {
    return GetBrokerLogs(
      audit: map['audit'] as bool,
      general: map['general'] as bool,
    );
  }
}
