// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// The storage account linked service.
class AzureStorageLinkedService {
  /// The Azure key vault secret reference of accountKey in connection string.
  final pulumi.Input<AzureKeyVaultSecretReference>? accountKey;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// The connection string. It is mutually exclusive with sasUri property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? connectionString;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The Azure key vault secret reference of sasToken in sas uri.
  final pulumi.Input<AzureKeyVaultSecretReference>? sasToken;
  /// SAS URI of the Azure Storage resource. It is mutually exclusive with connectionString property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? sasUri;
  /// Type of linked service.
  /// Expected value is 'AzureStorage'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [AzureStorageLinkedService].
  /// [accountKey] The Azure key vault secret reference of accountKey in connection string.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The connection string. It is mutually exclusive with sasUri property. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [sasToken] The Azure key vault secret reference of sasToken in sas uri.
  /// [sasUri] SAS URI of the Azure Storage resource. It is mutually exclusive with connectionString property. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  const AzureStorageLinkedService({
    this.accountKey,
    this.annotations,
    this.connectVia,
    this.connectionString,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.sasToken,
    this.sasUri,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(accountKey, (value) => value.toMap()),
      'annotations': ?annotations,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sasToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(sasToken, (value) => value.toMap()),
      'sasUri': ?sasUri,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureStorageLinkedService.fromMap(Map<String, dynamic> map) {
    return AzureStorageLinkedService(
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sasUri: (() { final guardedValue = map['sasUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
