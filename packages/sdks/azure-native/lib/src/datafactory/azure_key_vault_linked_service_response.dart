// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure Key Vault linked service.
class AzureKeyVaultLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The base URL of the Azure Key Vault. e.g. https://myakv.vault.azure.net Type: string (or Expression with resultType string).
  final dynamic baseUrl;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The credential reference containing authentication information.
  final CredentialReferenceResponse? credential;
  /// Linked service description.
  final String? description;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Type of linked service.
  /// Expected value is 'AzureKeyVault'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AzureKeyVaultLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [baseUrl] The base URL of the Azure Key Vault. e.g. https://myakv.vault.azure.net Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [description] Linked service description.
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  AzureKeyVaultLinkedServiceResponse({
    this.annotations,
    required this.baseUrl,
    this.connectVia,
    this.credential,
    this.description,
    this.parameters,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'baseUrl': baseUrl,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'description': ?description,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'type': type,
      'version': ?version,
    };
  }

  factory AzureKeyVaultLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureKeyVaultLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      baseUrl: map['baseUrl'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

