// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAppServiceCertificateOrderCertificate.
class GetAppServiceCertificateOrderCertificateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Resource Id.
  final String id;

  /// Key Vault resource Id.
  final String? keyVaultId;

  /// Key Vault secret name.
  final String? keyVaultSecretName;

  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final String? kind;

  /// Resource Location.
  final String location;

  /// Resource Name.
  final String name;

  /// Status of the Key Vault secret.
  final String provisioningState;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Resource type.
  final String type;

  /// Creates a new [GetAppServiceCertificateOrderCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id.
  /// [keyVaultId] Key Vault resource Id.
  /// [keyVaultSecretName] Key Vault secret name.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [name] Resource Name.
  /// [provisioningState] Status of the Key Vault secret.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetAppServiceCertificateOrderCertificateResult({
    required this.azureApiVersion,
    required this.id,
    this.keyVaultId,
    this.keyVaultSecretName,
    this.kind,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretName': ?keyVaultSecretName,
      'kind': ?kind,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAppServiceCertificateOrderCertificateResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppServiceCertificateOrderCertificateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      keyVaultId: (() {
        final guardedValue = map['keyVaultId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      keyVaultSecretName: (() {
        final guardedValue = map['keyVaultSecretName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
