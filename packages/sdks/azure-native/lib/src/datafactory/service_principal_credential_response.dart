// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';

/// Service principal credential.
class ServicePrincipalCredentialResponse {
  /// List of tags that can be used for describing the Credential.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Credential description.
  final pulumi.Input<String>? description;
  /// The app ID of the service principal used to authenticate
  final pulumi.Input<dynamic>? servicePrincipalId;
  /// The key of the service principal used to authenticate.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? servicePrincipalKey;
  /// The ID of the tenant to which the service principal belongs
  final pulumi.Input<dynamic>? tenant;
  /// Type of credential.
  /// Expected value is 'ServicePrincipal'.
  final pulumi.Input<String> type;

  /// Creates a new [ServicePrincipalCredentialResponse].
  /// [annotations] List of tags that can be used for describing the Credential.
  /// [description] Credential description.
  /// [servicePrincipalId] The app ID of the service principal used to authenticate
  /// [servicePrincipalKey] The key of the service principal used to authenticate.
  /// [tenant] The ID of the tenant to which the service principal belongs
  /// [type] Type of credential.
  const ServicePrincipalCredentialResponse({
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
      'servicePrincipalKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(servicePrincipalKey, (value) => value.toMap()),
      'tenant': ?tenant,
      'type': type,
    };
  }

  factory ServicePrincipalCredentialResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalCredentialResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalKey: (() { final guardedValue = map['servicePrincipalKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
