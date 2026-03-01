// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure ML Service linked service.
class AzureMLServiceLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// Type of authentication (Required to specify MSI) used to connect to AzureML. Type: string (or Expression with resultType string).
  final dynamic authentication;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Azure ML Service workspace name. Type: string (or Expression with resultType string).
  final dynamic mlWorkspaceName;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Azure ML Service workspace resource group name. Type: string (or Expression with resultType string).
  final dynamic resourceGroupName;
  /// The ID of the service principal used to authenticate against the endpoint of a published Azure ML Service pipeline. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The key of the service principal used to authenticate against the endpoint of a published Azure ML Service pipeline.
  final AzureKeyVaultSecretReferenceResponse? servicePrincipalKey;
  /// Azure ML Service workspace subscription ID. Type: string (or Expression with resultType string).
  final dynamic subscriptionId;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// Type of linked service.
  /// Expected value is 'AzureMLService'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AzureMLServiceLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authentication] Type of authentication (Required to specify MSI) used to connect to AzureML. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [mlWorkspaceName] Azure ML Service workspace name. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [resourceGroupName] Azure ML Service workspace resource group name. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] The ID of the service principal used to authenticate against the endpoint of a published Azure ML Service pipeline. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The key of the service principal used to authenticate against the endpoint of a published Azure ML Service pipeline.
  /// [subscriptionId] Azure ML Service workspace subscription ID. Type: string (or Expression with resultType string).
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  AzureMLServiceLinkedServiceResponse({
    this.annotations,
    this.authentication,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.mlWorkspaceName,
    this.parameters,
    required this.resourceGroupName,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    required this.subscriptionId,
    this.tenant,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authentication': ?authentication,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'mlWorkspaceName': mlWorkspaceName,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
      'subscriptionId': subscriptionId,
      'tenant': ?tenant,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureMLServiceLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureMLServiceLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authentication: map['authentication'] == null ? null : map['authentication'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      mlWorkspaceName: map['mlWorkspaceName'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'],
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      subscriptionId: map['subscriptionId'],
      tenant: map['tenant'] == null ? null : map['tenant'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

