// ignore_for_file: unused_element, unnecessary_cast

class GetSinkExclusion {
  /// A description of this exclusion.
  final String description;

  /// Whether this exclusion is disabled and it does not exclude any log entries.
  final bool disabled;

  /// An advanced logs filter that matches the log entries to be excluded.
  final String filter;

  /// A client-assigned identifier, such as `load-balancer-exclusion`.
  final String name;

  GetSinkExclusion({
    required this.description,
    required this.disabled,
    required this.filter,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['disabled'] = disabled;
    map['filter'] = filter;
    map['name'] = name;
    return map;
  }

  factory GetSinkExclusion.fromMap(Map<String, dynamic> map) {
    return GetSinkExclusion(
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      filter: map['filter'] as String,
      name: map['name'] as String,
    );
  }
}
