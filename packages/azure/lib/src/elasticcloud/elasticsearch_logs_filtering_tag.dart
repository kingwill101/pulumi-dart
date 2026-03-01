// ignore_for_file: unused_element, unnecessary_cast


class ElasticsearchLogsFilteringTag {
  /// Specifies the type of action which should be taken when the Tag matches the `name` and `value`. Possible values are `Exclude` and `Include`.
  final String action;
  /// Specifies the name (key) of the Tag which should be filtered.
  final String name;
  /// Specifies the value of the Tag which should be filtered.
  final String value;

  /// Creates a new [ElasticsearchLogsFilteringTag].
  /// [action] Specifies the type of action which should be taken when the Tag matches the `name` and `value`. Possible values are `Exclude` and `Include`.
  /// [name] Specifies the name (key) of the Tag which should be filtered.
  /// [value] Specifies the value of the Tag which should be filtered.
  ElasticsearchLogsFilteringTag({
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

  factory ElasticsearchLogsFilteringTag.fromMap(Map<String, dynamic> map) {
    return ElasticsearchLogsFilteringTag(
      action: map['action'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

