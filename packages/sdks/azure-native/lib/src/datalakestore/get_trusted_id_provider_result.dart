// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTrustedIdProvider.
class GetTrustedIdProviderResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource identifier.
  final String id;
  /// The URL of this trusted identity provider.
  final String idProvider;
  /// The resource name.
  final String name;
  /// The resource type.
  final String type;

  /// Creates a new [GetTrustedIdProviderResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource identifier.
  /// [idProvider] The URL of this trusted identity provider.
  /// [name] The resource name.
  /// [type] The resource type.
  const GetTrustedIdProviderResult({
    required this.azureApiVersion,
    required this.id,
    required this.idProvider,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'idProvider': idProvider,
      'name': name,
      'type': type,
    };
  }

  factory GetTrustedIdProviderResult.fromMap(Map<String, dynamic> map) {
    return GetTrustedIdProviderResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      idProvider: map['idProvider'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

