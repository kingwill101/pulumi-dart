// ignore_for_file: unused_element, unnecessary_cast


/// The login password for the container registry.
class RegistryPasswordResponse {
  /// The password name.
  final String? name;
  /// The password value.
  final String? value;

  /// Creates a new [RegistryPasswordResponse].
  /// [name] The password name.
  /// [value] The password value.
  RegistryPasswordResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory RegistryPasswordResponse.fromMap(Map<String, dynamic> map) {
    return RegistryPasswordResponse(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

