// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Zendesk.
class ZendeskLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The api token for the Zendesk source.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? apiToken;
  /// The authentication type to use.
  final pulumi.Input<String> authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The password of the Zendesk source.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;
  /// Type of linked service.
  /// Expected value is 'Zendesk'.
  final pulumi.Input<String> type;
  /// The url to connect Zendesk source. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// The username of the Zendesk source. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [ZendeskLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [apiToken] The api token for the Zendesk source.
  /// [authenticationType] The authentication type to use.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] The password of the Zendesk source.
  /// [type] Type of linked service.
  /// [url] The url to connect Zendesk source. Type: string (or Expression with resultType string).
  /// [userName] The username of the Zendesk source. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  ZendeskLinkedServiceResponse({
    this.annotations,
    this.apiToken,
    required this.authenticationType,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.password,
    required this.type,
    required this.url,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'apiToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(apiToken, (value) => value.toMap()),
      'authenticationType': authenticationType,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'type': type,
      'url': url,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory ZendeskLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return ZendeskLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      apiToken: map['apiToken'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['apiToken'] as Map).cast<String, dynamic>())).input(),
      authenticationType: (map['authenticationType'] as String).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      url: (map['url']).input(),
      userName: map['userName'] == null ? null : (map['userName']).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

