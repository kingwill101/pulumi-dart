// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a overridable value that can be passed to a task template.
class SetValue {
  /// Flag to indicate whether the value represents a secret or not.
  final bool? isSecret;
  /// The name of the overridable value.
  final String name;
  /// The overridable value.
  final String value;

  /// Creates a new [SetValue].
  /// [isSecret] Flag to indicate whether the value represents a secret or not.
  /// [name] The name of the overridable value.
  /// [value] The overridable value.
  SetValue({
    this.isSecret,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSecret': ?isSecret,
      'name': name,
      'value': value,
    };
  }

  factory SetValue.fromMap(Map<String, dynamic> map) {
    return SetValue(
      isSecret: map['isSecret'] == null ? null : map['isSecret'] as bool,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

