// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure Function linked service.
class AzureFunctionLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// Type of authentication (Required to specify MSI) used to connect to AzureFunction. Type: string (or Expression with resultType string).
  final dynamic authentication;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The credential reference containing authentication information.
  final CredentialReferenceResponse? credential;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The endpoint of the Azure Function App. URL will be in the format https://<accountName>.azurewebsites.net. Type: string (or Expression with resultType string).
  final dynamic functionAppUrl;
  /// Function or Host key for Azure Function App.
  final AzureKeyVaultSecretReferenceResponse? functionKey;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Allowed token audiences for azure function. Type: string (or Expression with resultType string).
  final dynamic resourceId;
  /// Type of linked service.
  /// Expected value is 'AzureFunction'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AzureFunctionLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authentication] Type of authentication (Required to specify MSI) used to connect to AzureFunction. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [functionAppUrl] The endpoint of the Azure Function App. URL will be in the format https://<accountName>.azurewebsites.net. Type: string (or Expression with resultType string).
  /// [functionKey] Function or Host key for Azure Function App.
  /// [parameters] Parameters for linked service.
  /// [resourceId] Allowed token audiences for azure function. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  AzureFunctionLinkedServiceResponse({
    this.annotations,
    this.authentication,
    this.connectVia,
    this.credential,
    this.description,
    this.encryptedCredential,
    required this.functionAppUrl,
    this.functionKey,
    this.parameters,
    this.resourceId,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authentication': ?authentication,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'functionAppUrl': functionAppUrl,
      'functionKey': ?functionKey == null ? null : functionKey!.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'resourceId': ?resourceId,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureFunctionLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureFunctionLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authentication: map['authentication'] == null ? null : map['authentication'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      functionAppUrl: map['functionAppUrl'],
      functionKey: map['functionKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['functionKey'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceId: map['resourceId'] == null ? null : map['resourceId'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

