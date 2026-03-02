// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Quickbase.
class QuickbaseLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Type of linked service.
  /// Expected value is 'Quickbase'.
  final pulumi.Input<String> type;
  /// The url to connect Quickbase source. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// The user token for the Quickbase source.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse> userToken;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'url': url,
      'userToken': pulumi.Input.mapInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(userToken, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory QuickbaseLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return QuickbaseLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      url: (map['url']).input(),
      userToken: (AzureKeyVaultSecretReferenceResponse.fromMap((map['userToken'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

