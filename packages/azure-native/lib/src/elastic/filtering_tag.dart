// ignore_for_file: unused_element, unnecessary_cast


/// The definition of a filtering tag. Filtering tags are used for capturing resources and include/exclude them from being monitored.
class FilteringTag {
  /// Valid actions for a filtering tag.
  final String? action;
  /// The name (also known as the key) of the tag.
  final String? name;
  /// The value of the tag.
  final String? value;

  /// Creates a new [FilteringTag].
  /// [action] Valid actions for a filtering tag.
  /// [name] The name (also known as the key) of the tag.
  /// [value] The value of the tag.
  FilteringTag({
    this.action,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'name': ?name,
      'value': ?value,
    };
  }

  factory FilteringTag.fromMap(Map<String, dynamic> map) {
    return FilteringTag(
      action: map['action'] == null ? null : map['action'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

