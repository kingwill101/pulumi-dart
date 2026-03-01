// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for Dataworld.
class DataworldLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The api token for the Dataworld source.
  final AzureKeyVaultSecretReference apiToken;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// Type of linked service.
  /// Expected value is 'Dataworld'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [DataworldLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [apiToken] The api token for the Dataworld source.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  DataworldLinkedService({
    this.annotations,
    required this.apiToken,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.parameters,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'apiToken': apiToken.toMap(),
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'type': type,
      'version': ?version,
    };
  }

  factory DataworldLinkedService.fromMap(Map<String, dynamic> map) {
    return DataworldLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      apiToken: AzureKeyVaultSecretReference.fromMap((map['apiToken'] as Map).cast<String, dynamic>()),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

