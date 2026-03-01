// ignore_for_file: unused_element, unnecessary_cast


/// Data Lake Store trusted identity provider information.
class TrustedIdProviderResponse {
  /// The resource identifier.
  final String id;
  /// The URL of this trusted identity provider.
  final String idProvider;
  /// The resource name.
  final String name;
  /// The resource type.
  final String type;

  /// Creates a new [TrustedIdProviderResponse].
  /// [id] The resource identifier.
  /// [idProvider] The URL of this trusted identity provider.
  /// [name] The resource name.
  /// [type] The resource type.
  TrustedIdProviderResponse({
    required this.id,
    required this.idProvider,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'idProvider': idProvider,
      'name': name,
      'type': type,
    };
  }

  factory TrustedIdProviderResponse.fromMap(Map<String, dynamic> map) {
    return TrustedIdProviderResponse(
      id: map['id'] as String,
      idProvider: map['idProvider'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

