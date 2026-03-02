// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Microsoft Fabric Warehouse linked service.
class WarehouseLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The ID of Microsoft Fabric Warehouse artifact. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> artifactId;
  /// The authentication type to use.
  final pulumi.Input<String>? authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReference>? credential;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The endpoint of Microsoft Fabric Warehouse server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> endpoint;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalCredential;
  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalCredentialType;
  /// The ID of the application used to authenticate against Microsoft Fabric Warehouse. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;
  /// The Key of the application used to authenticate against Microsoft Fabric Warehouse.
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalKey;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tenant;
  /// Type of linked service.
  /// Expected value is 'Warehouse'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;
  /// The ID of Microsoft Fabric workspace. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? workspaceId;

  /// Creates a new [WarehouseLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [artifactId] The ID of Microsoft Fabric Warehouse artifact. Type: string (or Expression with resultType string).
  /// [authenticationType] The authentication type to use.
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [endpoint] The endpoint of Microsoft Fabric Warehouse server. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [servicePrincipalCredential] The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  /// [servicePrincipalCredentialType] The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] The ID of the application used to authenticate against Microsoft Fabric Warehouse. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The Key of the application used to authenticate against Microsoft Fabric Warehouse.
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  /// [workspaceId] The ID of Microsoft Fabric workspace. Type: string (or Expression with resultType string).
  WarehouseLinkedService({
    this.annotations,
    required this.artifactId,
    this.authenticationType,
    this.connectVia,
    this.credential,
    this.description,
    this.encryptedCredential,
    required this.endpoint,
    this.parameters,
    this.servicePrincipalCredential,
    this.servicePrincipalCredentialType,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenant,
    required this.type,
    this.version,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'artifactId': artifactId,
      'authenticationType': ?authenticationType,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReference, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': endpoint,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalCredential': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(servicePrincipalCredential, (value) => value.toMap()),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(servicePrincipalKey, (value) => value.toMap()),
      'tenant': ?tenant,
      'type': type,
      'version': ?version,
      'workspaceId': ?workspaceId,
    };
  }

  factory WarehouseLinkedService.fromMap(Map<String, dynamic> map) {
    return WarehouseLinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      artifactId: (map['artifactId']).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']! as String).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      credential: map['credential'] == null ? null : (CredentialReference.fromMap((map['credential']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      endpoint: (map['endpoint']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      servicePrincipalCredential: map['servicePrincipalCredential'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['servicePrincipalCredential']! as Map).cast<String, dynamic>())).input(),
      servicePrincipalCredentialType: map['servicePrincipalCredentialType'] == null ? null : (map['servicePrincipalCredentialType']!).input(),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : (map['servicePrincipalId']!).input(),
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['servicePrincipalKey']! as Map).cast<String, dynamic>())).input(),
      tenant: map['tenant'] == null ? null : (map['tenant']!).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']!).input(),
    );
  }
}

