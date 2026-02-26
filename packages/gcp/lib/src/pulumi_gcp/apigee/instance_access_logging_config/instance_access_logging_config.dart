// ignore_for_file: unused_element, unnecessary_cast

class InstanceAccessLoggingConfig {
  /// Boolean flag that specifies whether the customer access log feature is enabled.
  final bool enabled;

  /// Ship the access log entries that match the statusCode defined in the filter.
  /// The statusCode is the only expected/supported filter field. (Ex: statusCode)
  /// The filter will parse it to the Common Expression Language semantics for expression
  /// evaluation to build the filter condition. (Ex: "filter": statusCode >= 200 && statusCode < 300 )
  final String? filter;

  InstanceAccessLoggingConfig({
    required this.enabled,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    return map;
  }

  factory InstanceAccessLoggingConfig.fromMap(Map<String, dynamic> map) {
    return InstanceAccessLoggingConfig(
      enabled: map['enabled'] as bool,
      filter: map['filter'] == null ? null : map['filter'] as String,
    );
  }
}
