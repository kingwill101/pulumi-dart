// ignore_for_file: unused_element, unnecessary_cast


class MonitorTagRuleLogFilter {
  /// Allowed values Include or Exclude.
  final String action;
  /// Name of the Tag.
  final String name;
  /// Value of the Tag.
  final String value;

  /// Creates a new [MonitorTagRuleLogFilter].
  /// [action] Allowed values Include or Exclude.
  /// [name] Name of the Tag.
  /// [value] Value of the Tag.
  MonitorTagRuleLogFilter({
    required this.action,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'name': name,
      'value': value,
    };
  }

  factory MonitorTagRuleLogFilter.fromMap(Map<String, dynamic> map) {
    return MonitorTagRuleLogFilter(
      action: map['action'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

