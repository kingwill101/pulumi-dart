// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Azure ML Studio Web Service linked service.
class AzureMLLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The API key for accessing the Azure ML model endpoint.
  final AzureKeyVaultSecretReference apiKey;
  /// Type of authentication (Required to specify MSI) used to connect to AzureML. Type: string (or Expression with resultType string).
  final dynamic authentication;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The Batch Execution REST URL for an Azure ML Studio Web Service endpoint. Type: string (or Expression with resultType string).
  final dynamic mlEndpoint;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The ID of the service principal used to authenticate against the ARM-based updateResourceEndpoint of an Azure ML Studio web service. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The key of the service principal used to authenticate against the ARM-based updateResourceEndpoint of an Azure ML Studio web service.
  final AzureKeyVaultSecretReference? servicePrincipalKey;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// Type of linked service.
  /// Expected value is 'AzureML'.
  final String type;
  /// The Update Resource REST URL for an Azure ML Studio Web Service endpoint. Type: string (or Expression with resultType string).
  final dynamic updateResourceEndpoint;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AzureMLLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [apiKey] The API key for accessing the Azure ML model endpoint.
  /// [authentication] Type of authentication (Required to specify MSI) used to connect to AzureML. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [mlEndpoint] The Batch Execution REST URL for an Azure ML Studio Web Service endpoint. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [servicePrincipalId] The ID of the service principal used to authenticate against the ARM-based updateResourceEndpoint of an Azure ML Studio web service. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The key of the service principal used to authenticate against the ARM-based updateResourceEndpoint of an Azure ML Studio web service.
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [updateResourceEndpoint] The Update Resource REST URL for an Azure ML Studio Web Service endpoint. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  AzureMLLinkedService({
    this.annotations,
    required this.apiKey,
    this.authentication,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.mlEndpoint,
    this.parameters,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenant,
    required this.type,
    this.updateResourceEndpoint,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'apiKey': apiKey.toMap(),
      'authentication': ?authentication,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'mlEndpoint': mlEndpoint,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
      'tenant': ?tenant,
      'type': type,
      'updateResourceEndpoint': ?updateResourceEndpoint,
      'version': ?version,
    };
  }

  factory AzureMLLinkedService.fromMap(Map<String, dynamic> map) {
    return AzureMLLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      apiKey: AzureKeyVaultSecretReference.fromMap((map['apiKey'] as Map).cast<String, dynamic>()),
      authentication: map['authentication'] == null ? null : map['authentication'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      mlEndpoint: map['mlEndpoint'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      tenant: map['tenant'] == null ? null : map['tenant'],
      type: map['type'] as String,
      updateResourceEndpoint: map['updateResourceEndpoint'] == null ? null : map['updateResourceEndpoint'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

