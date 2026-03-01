// ignore_for_file: unused_element, unnecessary_cast


/// Key-value pairs that can be assigned to this resource.
class Tags {
  /// A tag name.
  final String name;
  /// A tag value.
  final String? value;

  /// Creates a new [Tags].
  /// [name] A tag name.
  /// [value] A tag value.
  Tags({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory Tags.fromMap(Map<String, dynamic> map) {
    return Tags(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

