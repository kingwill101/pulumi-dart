// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Azure ML Studio Web Service linked service.
class AzureMLLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The API key for accessing the Azure ML model endpoint.
  final pulumi.Input<AzureKeyVaultSecretReference> apiKey;
  /// Type of authentication (Required to specify MSI) used to connect to AzureML. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? authentication;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The Batch Execution REST URL for an Azure ML Studio Web Service endpoint. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> mlEndpoint;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The ID of the service principal used to authenticate against the ARM-based updateResourceEndpoint of an Azure ML Studio web service. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;
  /// The key of the service principal used to authenticate against the ARM-based updateResourceEndpoint of an Azure ML Studio web service.
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalKey;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tenant;
  /// Type of linked service.
  /// Expected value is 'AzureML'.
  final pulumi.Input<String> type;
  /// The Update Resource REST URL for an Azure ML Studio Web Service endpoint. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? updateResourceEndpoint;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

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
      'apiKey': pulumi.Input.mapInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(apiKey, (value) => value.toMap()),
      'authentication': ?authentication,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'mlEndpoint': mlEndpoint,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(servicePrincipalKey, (value) => value.toMap()),
      'tenant': ?tenant,
      'type': type,
      'updateResourceEndpoint': ?updateResourceEndpoint,
      'version': ?version,
    };
  }

  factory AzureMLLinkedService.fromMap(Map<String, dynamic> map) {
    return AzureMLLinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      apiKey: (AzureKeyVaultSecretReference.fromMap((map['apiKey'] as Map).cast<String, dynamic>())).input(),
      authentication: map['authentication'] == null ? null : (map['authentication']).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential'] as String).input(),
      mlEndpoint: (map['mlEndpoint']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : (map['servicePrincipalId']).input(),
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>())).input(),
      tenant: map['tenant'] == null ? null : (map['tenant']).input(),
      type: (map['type'] as String).input(),
      updateResourceEndpoint: map['updateResourceEndpoint'] == null ? null : (map['updateResourceEndpoint']).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

