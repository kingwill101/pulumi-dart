// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_secret_reference_response.dart';

/// Service principal credential.
class ServicePrincipalCredentialResponse {
  /// List of tags that can be used for describing the Credential.
  final List<dynamic>? annotations;
  /// Credential description.
  final String? description;
  /// The app ID of the service principal used to authenticate
  final dynamic servicePrincipalId;
  /// The key of the service principal used to authenticate.
  final AzureKeyVaultSecretReferenceResponse? servicePrincipalKey;
  /// The ID of the tenant to which the service principal belongs
  final dynamic tenant;
  /// Type of credential.
  /// Expected value is 'ServicePrincipal'.
  final String type;

  /// Creates a new [ServicePrincipalCredentialResponse].
  /// [annotations] List of tags that can be used for describing the Credential.
  /// [description] Credential description.
  /// [servicePrincipalId] The app ID of the service principal used to authenticate
  /// [servicePrincipalKey] The key of the service principal used to authenticate.
  /// [tenant] The ID of the tenant to which the service principal belongs
  /// [type] Type of credential.
  ServicePrincipalCredentialResponse({
    this.annotations,
    this.description,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenant,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
      'tenant': ?tenant,
      'type': type,
    };
  }

  factory ServicePrincipalCredentialResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalCredentialResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      tenant: map['tenant'] == null ? null : map['tenant'],
      type: map['type'] as String,
    );
  }
}

