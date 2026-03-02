// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for TeamDesk.
class TeamDeskLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The api token for the TeamDesk source.
  final pulumi.Input<AzureKeyVaultSecretReference>? apiToken;
  /// The authentication type to use.
  final pulumi.Input<String> authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The password of the TeamDesk source.
  final pulumi.Input<AzureKeyVaultSecretReference>? password;
  /// Type of linked service.
  /// Expected value is 'TeamDesk'.
  final pulumi.Input<String> type;
  /// The url to connect TeamDesk source. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// The username of the TeamDesk source. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [TeamDeskLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [apiToken] The api token for the TeamDesk source.
  /// [authenticationType] The authentication type to use.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] The password of the TeamDesk source.
  /// [type] Type of linked service.
  /// [url] The url to connect TeamDesk source. Type: string (or Expression with resultType string).
  /// [userName] The username of the TeamDesk source. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  TeamDeskLinkedService({
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
      'apiToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(apiToken, (value) => value.toMap()),
      'authenticationType': authenticationType,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
      'type': type,
      'url': url,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory TeamDeskLinkedService.fromMap(Map<String, dynamic> map) {
    return TeamDeskLinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      apiToken: map['apiToken'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['apiToken']! as Map).cast<String, dynamic>())).input(),
      authenticationType: (map['authenticationType'] as String).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      url: (map['url']).input(),
      userName: map['userName'] == null ? null : (map['userName']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

