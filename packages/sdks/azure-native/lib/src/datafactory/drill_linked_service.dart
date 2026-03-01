// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Drill server linked service.
class DrillLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// An ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The Azure key vault secret reference of password in connection string.
  final AzureKeyVaultSecretReference? pwd;
  /// Type of linked service.
  /// Expected value is 'Drill'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [DrillLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] An ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [pwd] The Azure key vault secret reference of password in connection string.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  DrillLinkedService({
    this.annotations,
    this.connectVia,
    this.connectionString,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.pwd,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'pwd': ?pwd == null ? null : pwd!.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory DrillLinkedService.fromMap(Map<String, dynamic> map) {
    return DrillLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      pwd: map['pwd'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['pwd'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

