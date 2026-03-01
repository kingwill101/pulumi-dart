// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// HBase server linked service.
class HBaseLinkedServiceResponse {
  /// Specifies whether to require a CA-issued SSL certificate name to match the host name of the server when connecting over SSL. The default value is false.
  final dynamic allowHostNameCNMismatch;
  /// Specifies whether to allow self-signed certificates from the server. The default value is false.
  final dynamic allowSelfSignedServerCert;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication mechanism to use to connect to the HBase server.
  final String authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Linked service description.
  final String? description;
  /// Specifies whether the connections to the server are encrypted using SSL. The default value is false.
  final dynamic enableSsl;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The IP address or host name of the HBase server. (i.e. 192.168.222.160)
  final dynamic host;
  /// The partial URL corresponding to the HBase server. (i.e. /gateway/sandbox/hbase/version)
  final dynamic httpPath;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The password corresponding to the user name.
  final AzureKeyVaultSecretReferenceResponse? password;
  /// The TCP port that the HBase instance uses to listen for client connections. The default value is 9090.
  final dynamic port;
  /// The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR.
  final dynamic trustedCertPath;
  /// Type of linked service.
  /// Expected value is 'HBase'.
  final String type;
  /// The user name used to connect to the HBase instance.
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [HBaseLinkedServiceResponse].
  /// [allowHostNameCNMismatch] Specifies whether to require a CA-issued SSL certificate name to match the host name of the server when connecting over SSL. The default value is false.
  /// [allowSelfSignedServerCert] Specifies whether to allow self-signed certificates from the server. The default value is false.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication mechanism to use to connect to the HBase server.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [enableSsl] Specifies whether the connections to the server are encrypted using SSL. The default value is false.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] The IP address or host name of the HBase server. (i.e. 192.168.222.160)
  /// [httpPath] The partial URL corresponding to the HBase server. (i.e. /gateway/sandbox/hbase/version)
  /// [parameters] Parameters for linked service.
  /// [password] The password corresponding to the user name.
  /// [port] The TCP port that the HBase instance uses to listen for client connections. The default value is 9090.
  /// [trustedCertPath] The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR.
  /// [type] Type of linked service.
  /// [username] The user name used to connect to the HBase instance.
  /// [version] Version of the linked service.
  HBaseLinkedServiceResponse({
    this.allowHostNameCNMismatch,
    this.allowSelfSignedServerCert,
    this.annotations,
    required this.authenticationType,
    this.connectVia,
    this.description,
    this.enableSsl,
    this.encryptedCredential,
    required this.host,
    this.httpPath,
    this.parameters,
    this.password,
    this.port,
    this.trustedCertPath,
    required this.type,
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
      'enableSsl': ?enableSsl,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'httpPath': ?httpPath,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'port': ?port,
      'trustedCertPath': ?trustedCertPath,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory HBaseLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return HBaseLinkedServiceResponse(
      allowHostNameCNMismatch: map['allowHostNameCNMismatch'] == null ? null : map['allowHostNameCNMismatch'],
      allowSelfSignedServerCert: map['allowSelfSignedServerCert'] == null ? null : map['allowSelfSignedServerCert'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] as String,
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      enableSsl: map['enableSsl'] == null ? null : map['enableSsl'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      host: map['host'],
      httpPath: map['httpPath'] == null ? null : map['httpPath'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'],
      trustedCertPath: map['trustedCertPath'] == null ? null : map['trustedCertPath'],
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

