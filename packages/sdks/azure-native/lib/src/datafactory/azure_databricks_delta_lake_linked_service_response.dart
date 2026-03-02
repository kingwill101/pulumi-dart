// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure Databricks Delta Lake linked service.
class AzureDatabricksDeltaLakeLinkedServiceResponse {
  /// Access token for databricks REST API. Refer to https://docs.azuredatabricks.net/api/latest/authentication.html. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? accessToken;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The id of an existing interactive cluster that will be used for all runs of this job. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clusterId;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReferenceResponse>? credential;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// <REGION>.azuredatabricks.net, domain name of your Databricks deployment. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> domain;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Type of linked service.
  /// Expected value is 'AzureDatabricksDeltaLake'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;
  /// Workspace resource id for databricks REST API. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? workspaceResourceId;

  /// Creates a new [AzureDatabricksDeltaLakeLinkedServiceResponse].
  /// [accessToken] Access token for databricks REST API. Refer to https://docs.azuredatabricks.net/api/latest/authentication.html. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clusterId] The id of an existing interactive cluster that will be used for all runs of this job. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [description] Linked service description.
  /// [domain] <REGION>.azuredatabricks.net, domain name of your Databricks deployment. Type: string (or Expression with resultType string).
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  /// [workspaceResourceId] Workspace resource id for databricks REST API. Type: string (or Expression with resultType string).
  AzureDatabricksDeltaLakeLinkedServiceResponse({
    this.accessToken,
    this.annotations,
    this.clusterId,
    this.connectVia,
    this.credential,
    this.description,
    required this.domain,
    this.encryptedCredential,
    this.parameters,
    required this.type,
    this.version,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(accessToken, (value) => value.toMap()),
      'annotations': ?annotations,
      'clusterId': ?clusterId,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReferenceResponse, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'description': ?description,
      'domain': domain,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'version': ?version,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory AzureDatabricksDeltaLakeLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureDatabricksDeltaLakeLinkedServiceResponse(
      accessToken: map['accessToken'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['accessToken']! as Map).cast<String, dynamic>())).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']!).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      credential: map['credential'] == null ? null : (CredentialReferenceResponse.fromMap((map['credential']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      domain: (map['domain']).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
      workspaceResourceId: map['workspaceResourceId'] == null ? null : (map['workspaceResourceId']!).input(),
    );
  }
}

