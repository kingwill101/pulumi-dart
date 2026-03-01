// ignore_for_file: unused_element, unnecessary_cast


/// Secret definition.
class SecretResponse {
  /// Secret Name.
  final String? name;

  /// Creates a new [SecretResponse].
  /// [name] Secret Name.
  SecretResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SecretResponse.fromMap(Map<String, dynamic> map) {
    return SecretResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

