// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// ServiceNowV2 server linked service.
class ServiceNowV2LinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication type to use.
  final String authenticationType;
  /// The client id for OAuth2 authentication.
  final dynamic clientId;
  /// The client secret for OAuth2 authentication.
  final AzureKeyVaultSecretReference? clientSecret;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The endpoint of the ServiceNowV2 server. (i.e. <instance>.service-now.com)
  final dynamic endpoint;
  /// GrantType for OAuth2 authentication. Default value is password.
  final dynamic grantType;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The password corresponding to the user name for Basic and OAuth2 authentication.
  final AzureKeyVaultSecretReference? password;
  /// Type of linked service.
  /// Expected value is 'ServiceNowV2'.
  final String type;
  /// The user name used to connect to the ServiceNowV2 server for Basic and OAuth2 authentication.
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [ServiceNowV2LinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication type to use.
  /// [clientId] The client id for OAuth2 authentication.
  /// [clientSecret] The client secret for OAuth2 authentication.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [endpoint] The endpoint of the ServiceNowV2 server. (i.e. <instance>.service-now.com)
  /// [grantType] GrantType for OAuth2 authentication. Default value is password.
  /// [parameters] Parameters for linked service.
  /// [password] The password corresponding to the user name for Basic and OAuth2 authentication.
  /// [type] Type of linked service.
  /// [username] The user name used to connect to the ServiceNowV2 server for Basic and OAuth2 authentication.
  /// [version] Version of the linked service.
  ServiceNowV2LinkedService({
    this.annotations,
    required this.authenticationType,
    this.clientId,
    this.clientSecret,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.endpoint,
    this.grantType,
    this.parameters,
    this.password,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': authenticationType,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret == null ? null : clientSecret!.toMap(),
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': endpoint,
      'grantType': ?grantType,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory ServiceNowV2LinkedService.fromMap(Map<String, dynamic> map) {
    return ServiceNowV2LinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'],
      clientSecret: map['clientSecret'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      endpoint: map['endpoint'],
      grantType: map['grantType'] == null ? null : map['grantType'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

