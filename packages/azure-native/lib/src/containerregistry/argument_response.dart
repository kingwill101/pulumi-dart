// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a run argument.
class ArgumentResponse {
  /// Flag to indicate whether the argument represents a secret and want to be removed from build logs.
  final bool? isSecret;
  /// The name of the argument.
  final String name;
  /// The value of the argument.
  final String value;

  /// Creates a new [ArgumentResponse].
  /// [isSecret] Flag to indicate whether the argument represents a secret and want to be removed from build logs.
  /// [name] The name of the argument.
  /// [value] The value of the argument.
  ArgumentResponse({
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

  factory ArgumentResponse.fromMap(Map<String, dynamic> map) {
    return ArgumentResponse(
      isSecret: map['isSecret'] == null ? null : map['isSecret'] as bool,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

