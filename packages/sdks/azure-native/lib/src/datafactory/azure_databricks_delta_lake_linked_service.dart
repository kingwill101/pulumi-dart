// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Azure Databricks Delta Lake linked service.
class AzureDatabricksDeltaLakeLinkedService {
  /// Access token for databricks REST API. Refer to https://docs.azuredatabricks.net/api/latest/authentication.html. Type: string, SecureString or AzureKeyVaultSecretReference.
  final AzureKeyVaultSecretReference? accessToken;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The id of an existing interactive cluster that will be used for all runs of this job. Type: string (or Expression with resultType string).
  final dynamic clusterId;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// The credential reference containing authentication information.
  final CredentialReference? credential;
  /// Linked service description.
  final String? description;
  /// <REGION>.azuredatabricks.net, domain name of your Databricks deployment. Type: string (or Expression with resultType string).
  final dynamic domain;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// Type of linked service.
  /// Expected value is 'AzureDatabricksDeltaLake'.
  final String type;
  /// Version of the linked service.
  final String? version;
  /// Workspace resource id for databricks REST API. Type: string (or Expression with resultType string).
  final dynamic workspaceResourceId;

  /// Creates a new [AzureDatabricksDeltaLakeLinkedService].
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
  AzureDatabricksDeltaLakeLinkedService({
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
      'accessToken': ?accessToken == null ? null : accessToken!.toMap(),
      'annotations': ?annotations,
      'clusterId': ?clusterId,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'description': ?description,
      'domain': domain,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'type': type,
      'version': ?version,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory AzureDatabricksDeltaLakeLinkedService.fromMap(Map<String, dynamic> map) {
    return AzureDatabricksDeltaLakeLinkedService(
      accessToken: map['accessToken'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['accessToken'] as Map).cast<String, dynamic>()),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      clusterId: map['clusterId'] == null ? null : map['clusterId'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      domain: map['domain'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      workspaceResourceId: map['workspaceResourceId'] == null ? null : map['workspaceResourceId'],
    );
  }
}

