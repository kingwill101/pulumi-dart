// ignore_for_file: unused_element, unnecessary_cast


class DomainOsInitEnv {
  /// Defines the name of an environment variable to set during domain initialization.
  final String name;
  /// Specifies the value associated with an environment variable for the init process.
  final String value;

  /// Creates a new [DomainOsInitEnv].
  /// [name] Defines the name of an environment variable to set during domain initialization.
  /// [value] Specifies the value associated with an environment variable for the init process.
  DomainOsInitEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DomainOsInitEnv.fromMap(Map<String, dynamic> map) {
    return DomainOsInitEnv(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

