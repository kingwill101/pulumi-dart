// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Salesforce Service Cloud.
class SalesforceServiceCloudLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The Salesforce API version used in ADF. Type: string (or Expression with resultType string).
  final dynamic apiVersion;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The URL of Salesforce Service Cloud instance. Default is 'https://login.salesforce.com'. To copy data from sandbox, specify 'https://test.salesforce.com'. To copy data from custom domain, specify, for example, 'https://[domain].my.salesforce.com'. Type: string (or Expression with resultType string).
  final dynamic environmentUrl;
  /// Extended properties appended to the connection string. Type: string (or Expression with resultType string).
  final dynamic extendedProperties;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The password for Basic authentication of the Salesforce instance.
  final AzureKeyVaultSecretReferenceResponse? password;
  /// The security token is optional to remotely access Salesforce instance.
  final AzureKeyVaultSecretReferenceResponse? securityToken;
  /// Type of linked service.
  /// Expected value is 'SalesforceServiceCloud'.
  final String type;
  /// The username for Basic authentication of the Salesforce instance. Type: string (or Expression with resultType string).
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [SalesforceServiceCloudLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [apiVersion] The Salesforce API version used in ADF. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [environmentUrl] The URL of Salesforce Service Cloud instance. Default is 'https://login.salesforce.com'. To copy data from sandbox, specify 'https://test.salesforce.com'. To copy data from custom domain, specify, for example, 'https://[domain].my.salesforce.com'. Type: string (or Expression with resultType string).
  /// [extendedProperties] Extended properties appended to the connection string. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [password] The password for Basic authentication of the Salesforce instance.
  /// [securityToken] The security token is optional to remotely access Salesforce instance.
  /// [type] Type of linked service.
  /// [username] The username for Basic authentication of the Salesforce instance. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  SalesforceServiceCloudLinkedServiceResponse({
    this.annotations,
    this.apiVersion,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.environmentUrl,
    this.extendedProperties,
    this.parameters,
    this.password,
    this.securityToken,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'apiVersion': ?apiVersion,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'environmentUrl': ?environmentUrl,
      'extendedProperties': ?extendedProperties,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'securityToken': ?securityToken == null ? null : securityToken!.toMap(),
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory SalesforceServiceCloudLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return SalesforceServiceCloudLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      environmentUrl: map['environmentUrl'] == null ? null : map['environmentUrl'],
      extendedProperties: map['extendedProperties'] == null ? null : map['extendedProperties'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      securityToken: map['securityToken'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['securityToken'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

