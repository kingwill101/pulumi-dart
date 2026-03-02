// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Salesforce Service Cloud.
class SalesforceServiceCloudLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The Salesforce API version used in ADF. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? apiVersion;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The URL of Salesforce Service Cloud instance. Default is 'https://login.salesforce.com'. To copy data from sandbox, specify 'https://test.salesforce.com'. To copy data from custom domain, specify, for example, 'https://[domain].my.salesforce.com'. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? environmentUrl;
  /// Extended properties appended to the connection string. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? extendedProperties;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The password for Basic authentication of the Salesforce instance.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;
  /// The security token is optional to remotely access Salesforce instance.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? securityToken;
  /// Type of linked service.
  /// Expected value is 'SalesforceServiceCloud'.
  final pulumi.Input<String> type;
  /// The username for Basic authentication of the Salesforce instance. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? username;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'environmentUrl': ?environmentUrl,
      'extendedProperties': ?extendedProperties,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'securityToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(securityToken, (value) => value.toMap()),
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory SalesforceServiceCloudLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return SalesforceServiceCloudLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential'] as String).input(),
      environmentUrl: map['environmentUrl'] == null ? null : (map['environmentUrl']).input(),
      extendedProperties: map['extendedProperties'] == null ? null : (map['extendedProperties']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>())).input(),
      securityToken: map['securityToken'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['securityToken'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      username: map['username'] == null ? null : (map['username']).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

