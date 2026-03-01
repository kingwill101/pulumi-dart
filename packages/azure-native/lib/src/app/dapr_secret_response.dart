// ignore_for_file: unused_element, unnecessary_cast


/// Dapr component Secret for ListSecrets Action
class DaprSecretResponse {
  /// Secret Name.
  final String name;
  /// Secret Value.
  final String value;

  /// Creates a new [DaprSecretResponse].
  /// [name] Secret Name.
  /// [value] Secret Value.
  DaprSecretResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DaprSecretResponse.fromMap(Map<String, dynamic> map) {
    return DaprSecretResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

