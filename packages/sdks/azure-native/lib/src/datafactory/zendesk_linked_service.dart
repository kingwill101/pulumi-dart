// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for Zendesk.
class ZendeskLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The api token for the Zendesk source.
  final AzureKeyVaultSecretReference? apiToken;
  /// The authentication type to use.
  final String authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The password of the Zendesk source.
  final AzureKeyVaultSecretReference? password;
  /// Type of linked service.
  /// Expected value is 'Zendesk'.
  final String type;
  /// The url to connect Zendesk source. Type: string (or Expression with resultType string).
  final dynamic url;
  /// The username of the Zendesk source. Type: string (or Expression with resultType string).
  final dynamic userName;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [ZendeskLinkedService].
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
  ZendeskLinkedService({
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
      'apiToken': ?apiToken == null ? null : apiToken!.toMap(),
      'authenticationType': authenticationType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'type': type,
      'url': url,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory ZendeskLinkedService.fromMap(Map<String, dynamic> map) {
    return ZendeskLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      apiToken: map['apiToken'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['apiToken'] as Map).cast<String, dynamic>()),
      authenticationType: map['authenticationType'] as String,
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      url: map['url'],
      userName: map['userName'] == null ? null : map['userName'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

