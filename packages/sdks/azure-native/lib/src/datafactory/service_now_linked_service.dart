// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// ServiceNow server linked service.
class ServiceNowLinkedService {
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
  /// The endpoint of the ServiceNow server. (i.e. <instance>.service-now.com)
  final dynamic endpoint;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The password corresponding to the user name for Basic and OAuth2 authentication.
  final AzureKeyVaultSecretReference? password;
  /// Type of linked service.
  /// Expected value is 'ServiceNow'.
  final String type;
  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  final dynamic useEncryptedEndpoints;
  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  final dynamic useHostVerification;
  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  final dynamic usePeerVerification;
  /// The user name used to connect to the ServiceNow server for Basic and OAuth2 authentication.
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [ServiceNowLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication type to use.
  /// [clientId] The client id for OAuth2 authentication.
  /// [clientSecret] The client secret for OAuth2 authentication.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [endpoint] The endpoint of the ServiceNow server. (i.e. <instance>.service-now.com)
  /// [parameters] Parameters for linked service.
  /// [password] The password corresponding to the user name for Basic and OAuth2 authentication.
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  /// [useHostVerification] Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  /// [usePeerVerification] Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  /// [username] The user name used to connect to the ServiceNow server for Basic and OAuth2 authentication.
  /// [version] Version of the linked service.
  ServiceNowLinkedService({
    this.annotations,
    required this.authenticationType,
    this.clientId,
    this.clientSecret,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.endpoint,
    this.parameters,
    this.password,
    required this.type,
    this.useEncryptedEndpoints,
    this.useHostVerification,
    this.usePeerVerification,
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
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'username': ?username,
      'version': ?version,
    };
  }

  factory ServiceNowLinkedService.fromMap(Map<String, dynamic> map) {
    return ServiceNowLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'],
      clientSecret: map['clientSecret'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      endpoint: map['endpoint'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      useEncryptedEndpoints: map['useEncryptedEndpoints'] == null ? null : map['useEncryptedEndpoints'],
      useHostVerification: map['useHostVerification'] == null ? null : map['useHostVerification'],
      usePeerVerification: map['usePeerVerification'] == null ? null : map['usePeerVerification'],
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

