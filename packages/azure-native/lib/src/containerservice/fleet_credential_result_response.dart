// ignore_for_file: unused_element, unnecessary_cast


/// One credential result item.
class FleetCredentialResultResponse {
  /// The name of the credential.
  final String name;
  /// Base64-encoded Kubernetes configuration file.
  final String value;

  /// Creates a new [FleetCredentialResultResponse].
  /// [name] The name of the credential.
  /// [value] Base64-encoded Kubernetes configuration file.
  FleetCredentialResultResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory FleetCredentialResultResponse.fromMap(Map<String, dynamic> map) {
    return FleetCredentialResultResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

