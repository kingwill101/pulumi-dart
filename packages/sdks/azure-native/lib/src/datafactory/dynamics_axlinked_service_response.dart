// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Dynamics AX linked service.
class DynamicsAXLinkedServiceResponse {
  /// Specify the resource you are requesting authorization. Type: string (or Expression with resultType string).
  final dynamic aadResourceId;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Specify the application's client ID. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// Specify the application's key. Mark this field as a SecureString to store it securely in Data Factory, or reference a secret stored in Azure Key Vault. Type: string (or Expression with resultType string).
  final AzureKeyVaultSecretReferenceResponse servicePrincipalKey;
  /// Specify the tenant information (domain name or tenant ID) under which your application resides. Retrieve it by hovering the mouse in the top-right corner of the Azure portal. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// Type of linked service.
  /// Expected value is 'DynamicsAX'.
  final String type;
  /// The Dynamics AX (or Dynamics 365 Finance and Operations) instance OData endpoint.
  final dynamic url;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [DynamicsAXLinkedServiceResponse].
  /// [aadResourceId] Specify the resource you are requesting authorization. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [servicePrincipalId] Specify the application's client ID. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] Specify the application's key. Mark this field as a SecureString to store it securely in Data Factory, or reference a secret stored in Azure Key Vault. Type: string (or Expression with resultType string).
  /// [tenant] Specify the tenant information (domain name or tenant ID) under which your application resides. Retrieve it by hovering the mouse in the top-right corner of the Azure portal. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [url] The Dynamics AX (or Dynamics 365 Finance and Operations) instance OData endpoint.
  /// [version] Version of the linked service.
  DynamicsAXLinkedServiceResponse({
    required this.aadResourceId,
    this.annotations,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.parameters,
    required this.servicePrincipalId,
    required this.servicePrincipalKey,
    required this.tenant,
    required this.type,
    required this.url,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadResourceId': aadResourceId,
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'servicePrincipalId': servicePrincipalId,
      'servicePrincipalKey': servicePrincipalKey.toMap(),
      'tenant': tenant,
      'type': type,
      'url': url,
      'version': ?version,
    };
  }

  factory DynamicsAXLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return DynamicsAXLinkedServiceResponse(
      aadResourceId: map['aadResourceId'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      servicePrincipalId: map['servicePrincipalId'],
      servicePrincipalKey: AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      tenant: map['tenant'],
      type: map['type'] as String,
      url: map['url'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

