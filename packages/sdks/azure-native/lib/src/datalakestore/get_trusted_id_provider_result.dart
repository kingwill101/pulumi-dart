// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTrustedIdProvider.
class GetTrustedIdProviderResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource identifier.
  final String? id;
  /// The URL of this trusted identity provider.
  final String? idProvider;
  /// The resource name.
  final String? name;
  /// The resource type.
  final String? type;

  /// Creates a new [GetTrustedIdProviderResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource identifier.
  /// [idProvider] The URL of this trusted identity provider.
  /// [name] The resource name.
  /// [type] The resource type.
  const GetTrustedIdProviderResult({
    this.azureApiVersion,
    this.id,
    this.idProvider,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'idProvider': ?idProvider,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetTrustedIdProviderResult.fromMap(Map<String, dynamic> map) {
    return GetTrustedIdProviderResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idProvider: (() { final guardedValue = map['idProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
