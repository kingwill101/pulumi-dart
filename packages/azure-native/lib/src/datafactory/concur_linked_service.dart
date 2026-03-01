// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Concur Service linked service.
class ConcurLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// Application client_id supplied by Concur App Management.
  final dynamic clientId;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Properties used to connect to Concur. It is mutually exclusive with any other properties in the linked service. Type: object.
  final dynamic connectionProperties;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The password corresponding to the user name that you provided in the username field.
  final AzureKeyVaultSecretReference? password;
  /// Type of linked service.
  /// Expected value is 'Concur'.
  final String type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  final dynamic useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  final dynamic useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  final dynamic usePeerVerification;
  /// The user name that you use to access Concur Service.
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [ConcurLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clientId] Application client_id supplied by Concur App Management.
  /// [connectVia] The integration runtime reference.
  /// [connectionProperties] Properties used to connect to Concur. It is mutually exclusive with any other properties in the linked service. Type: object.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] The password corresponding to the user name that you provided in the username field.
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  /// [useHostVerification] Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  /// [usePeerVerification] Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  /// [username] The user name that you use to access Concur Service.
  /// [version] Version of the linked service.
  ConcurLinkedService({
    this.annotations,
    required this.clientId,
    this.connectVia,
    this.connectionProperties,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.password,
    required this.type,
    this.useEncryptedEndpoints,
    this.useHostVerification,
    this.usePeerVerification,
    required this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'clientId': clientId,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionProperties': ?connectionProperties,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'username': username,
      'version': ?version,
    };
  }

  factory ConcurLinkedService.fromMap(Map<String, dynamic> map) {
    return ConcurLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      clientId: map['clientId'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionProperties: map['connectionProperties'] == null ? null : map['connectionProperties'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      useEncryptedEndpoints: map['useEncryptedEndpoints'] == null ? null : map['useEncryptedEndpoints'],
      useHostVerification: map['useHostVerification'] == null ? null : map['useHostVerification'],
      usePeerVerification: map['usePeerVerification'] == null ? null : map['usePeerVerification'],
      username: map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

