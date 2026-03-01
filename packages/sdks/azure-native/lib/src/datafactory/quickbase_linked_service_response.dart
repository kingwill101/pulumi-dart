// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Quickbase.
class QuickbaseLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Type of linked service.
  /// Expected value is 'Quickbase'.
  final String type;
  /// The url to connect Quickbase source. Type: string (or Expression with resultType string).
  final dynamic url;
  /// The user token for the Quickbase source.
  final AzureKeyVaultSecretReferenceResponse userToken;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [QuickbaseLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [url] The url to connect Quickbase source. Type: string (or Expression with resultType string).
  /// [userToken] The user token for the Quickbase source.
  /// [version] Version of the linked service.
  QuickbaseLinkedServiceResponse({
    this.annotations,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.parameters,
    required this.type,
    required this.url,
    required this.userToken,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'type': type,
      'url': url,
      'userToken': userToken.toMap(),
      'version': ?version,
    };
  }

  factory QuickbaseLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return QuickbaseLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      url: map['url'],
      userToken: AzureKeyVaultSecretReferenceResponse.fromMap((map['userToken'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

