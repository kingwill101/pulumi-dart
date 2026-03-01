// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Spark Server linked service.
class SparkLinkedServiceResponse {
  /// Specifies whether to require a CA-issued SSL certificate name to match the host name of the server when connecting over SSL. The default value is false.
  final dynamic allowHostNameCNMismatch;
  /// Specifies whether to allow self-signed certificates from the server. The default value is false.
  final dynamic allowSelfSignedServerCert;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication method used to access the Spark server.
  final String authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Linked service description.
  final String? description;
  /// Specifies whether the connections to the server will validate server certificate, the default value is True. Only used for Version 2.0
  final dynamic enableServerCertificateValidation;
  /// Specifies whether the connections to the server are encrypted using SSL. The default value is false.
  final dynamic enableSsl;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// IP address or host name of the Spark server
  final dynamic host;
  /// The partial URL corresponding to the Spark server.
  final dynamic httpPath;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The password corresponding to the user name that you provided in the Username field
  final AzureKeyVaultSecretReferenceResponse? password;
  /// The TCP port that the Spark server uses to listen for client connections.
  final dynamic port;
  /// The type of Spark server.
  final String? serverType;
  /// The transport protocol to use in the Thrift layer.
  final String? thriftTransportProtocol;
  /// The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR.
  final dynamic trustedCertPath;
  /// Type of linked service.
  /// Expected value is 'Spark'.
  final String type;
  /// Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false.
  final dynamic useSystemTrustStore;
  /// The user name that you use to access Spark Server.
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [SparkLinkedServiceResponse].
  /// [allowHostNameCNMismatch] Specifies whether to require a CA-issued SSL certificate name to match the host name of the server when connecting over SSL. The default value is false.
  /// [allowSelfSignedServerCert] Specifies whether to allow self-signed certificates from the server. The default value is false.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication method used to access the Spark server.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [enableServerCertificateValidation] Specifies whether the connections to the server will validate server certificate, the default value is True. Only used for Version 2.0
  /// [enableSsl] Specifies whether the connections to the server are encrypted using SSL. The default value is false.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] IP address or host name of the Spark server
  /// [httpPath] The partial URL corresponding to the Spark server.
  /// [parameters] Parameters for linked service.
  /// [password] The password corresponding to the user name that you provided in the Username field
  /// [port] The TCP port that the Spark server uses to listen for client connections.
  /// [serverType] The type of Spark server.
  /// [thriftTransportProtocol] The transport protocol to use in the Thrift layer.
  /// [trustedCertPath] The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR.
  /// [type] Type of linked service.
  /// [useSystemTrustStore] Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false.
  /// [username] The user name that you use to access Spark Server.
  /// [version] Version of the linked service.
  SparkLinkedServiceResponse({
    this.allowHostNameCNMismatch,
    this.allowSelfSignedServerCert,
    this.annotations,
    required this.authenticationType,
    this.connectVia,
    this.description,
    this.enableServerCertificateValidation,
    this.enableSsl,
    this.encryptedCredential,
    required this.host,
    this.httpPath,
    this.parameters,
    this.password,
    required this.port,
    this.serverType,
    this.thriftTransportProtocol,
    this.trustedCertPath,
    required this.type,
    this.useSystemTrustStore,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowHostNameCNMismatch': ?allowHostNameCNMismatch,
      'allowSelfSignedServerCert': ?allowSelfSignedServerCert,
      'annotations': ?annotations,
      'authenticationType': authenticationType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'enableServerCertificateValidation': ?enableServerCertificateValidation,
      'enableSsl': ?enableSsl,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'httpPath': ?httpPath,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'port': port,
      'serverType': ?serverType,
      'thriftTransportProtocol': ?thriftTransportProtocol,
      'trustedCertPath': ?trustedCertPath,
      'type': type,
      'useSystemTrustStore': ?useSystemTrustStore,
      'username': ?username,
      'version': ?version,
    };
  }

  factory SparkLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return SparkLinkedServiceResponse(
      allowHostNameCNMismatch: map['allowHostNameCNMismatch'] == null ? null : map['allowHostNameCNMismatch'],
      allowSelfSignedServerCert: map['allowSelfSignedServerCert'] == null ? null : map['allowSelfSignedServerCert'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] as String,
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      enableServerCertificateValidation: map['enableServerCertificateValidation'] == null ? null : map['enableServerCertificateValidation'],
      enableSsl: map['enableSsl'] == null ? null : map['enableSsl'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      host: map['host'],
      httpPath: map['httpPath'] == null ? null : map['httpPath'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'],
      serverType: map['serverType'] == null ? null : map['serverType'] as String,
      thriftTransportProtocol: map['thriftTransportProtocol'] == null ? null : map['thriftTransportProtocol'] as String,
      trustedCertPath: map['trustedCertPath'] == null ? null : map['trustedCertPath'],
      type: map['type'] as String,
      useSystemTrustStore: map['useSystemTrustStore'] == null ? null : map['useSystemTrustStore'],
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

