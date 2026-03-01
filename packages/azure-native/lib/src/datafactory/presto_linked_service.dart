// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Presto server linked service. This linked service has supported version property. The Version 1.0 is scheduled for deprecation while your pipeline will continue to run after EOL but without any bug fix or new features.
class PrestoLinkedService {
  /// Specifies whether to require a CA-issued SSL certificate name to match the host name of the server when connecting over SSL. The default value is false. Only used for Version 1.0.
  final dynamic allowHostNameCNMismatch;
  /// Specifies whether to allow self-signed certificates from the server. The default value is false. Only used for Version 1.0.
  final dynamic allowSelfSignedServerCert;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication mechanism used to connect to the Presto server.
  final String authenticationType;
  /// The catalog context for all request against the server.
  final dynamic catalog;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// Specifies whether the connections to the server will validate server certificate, the default value is True. Only used for Version 2.0
  final dynamic enableServerCertificateValidation;
  /// Specifies whether the connections to the server are encrypted using SSL. The default value for legacy version is False. The default value for version 2.0 is True.
  final dynamic enableSsl;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The IP address or host name of the Presto server. (i.e. 192.168.222.160)
  final dynamic host;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The password corresponding to the user name.
  final AzureKeyVaultSecretReference? password;
  /// The TCP port that the Presto server uses to listen for client connections. The default value is 8080 when disable SSL, default value is 443 when enable SSL.
  final dynamic port;
  /// The version of the Presto server. (i.e. 0.148-t) Only used for Version 1.0.
  final dynamic serverVersion;
  /// The local time zone used by the connection. Valid values for this option are specified in the IANA Time Zone Database. The default value for Version 1.0 is the client system time zone. The default value for Version 2.0 is server system timeZone
  final dynamic timeZoneID;
  /// The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR. Only used for Version 1.0.
  final dynamic trustedCertPath;
  /// Type of linked service.
  /// Expected value is 'Presto'.
  final String type;
  /// Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false. Only used for Version 1.0.
  final dynamic useSystemTrustStore;
  /// The user name used to connect to the Presto server.
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [PrestoLinkedService].
  /// [allowHostNameCNMismatch] Specifies whether to require a CA-issued SSL certificate name to match the host name of the server when connecting over SSL. The default value is false. Only used for Version 1.0.
  /// [allowSelfSignedServerCert] Specifies whether to allow self-signed certificates from the server. The default value is false. Only used for Version 1.0.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication mechanism used to connect to the Presto server.
  /// [catalog] The catalog context for all request against the server.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [enableServerCertificateValidation] Specifies whether the connections to the server will validate server certificate, the default value is True. Only used for Version 2.0
  /// [enableSsl] Specifies whether the connections to the server are encrypted using SSL. The default value for legacy version is False. The default value for version 2.0 is True.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] The IP address or host name of the Presto server. (i.e. 192.168.222.160)
  /// [parameters] Parameters for linked service.
  /// [password] The password corresponding to the user name.
  /// [port] The TCP port that the Presto server uses to listen for client connections. The default value is 8080 when disable SSL, default value is 443 when enable SSL.
  /// [serverVersion] The version of the Presto server. (i.e. 0.148-t) Only used for Version 1.0.
  /// [timeZoneID] The local time zone used by the connection. Valid values for this option are specified in the IANA Time Zone Database. The default value for Version 1.0 is the client system time zone. The default value for Version 2.0 is server system timeZone
  /// [trustedCertPath] The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR. Only used for Version 1.0.
  /// [type] Type of linked service.
  /// [useSystemTrustStore] Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false. Only used for Version 1.0.
  /// [username] The user name used to connect to the Presto server.
  /// [version] Version of the linked service.
  PrestoLinkedService({
    this.allowHostNameCNMismatch,
    this.allowSelfSignedServerCert,
    this.annotations,
    required this.authenticationType,
    required this.catalog,
    this.connectVia,
    this.description,
    this.enableServerCertificateValidation,
    this.enableSsl,
    this.encryptedCredential,
    required this.host,
    this.parameters,
    this.password,
    this.port,
    this.serverVersion,
    this.timeZoneID,
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
      'catalog': catalog,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'enableServerCertificateValidation': ?enableServerCertificateValidation,
      'enableSsl': ?enableSsl,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'port': ?port,
      'serverVersion': ?serverVersion,
      'timeZoneID': ?timeZoneID,
      'trustedCertPath': ?trustedCertPath,
      'type': type,
      'useSystemTrustStore': ?useSystemTrustStore,
      'username': ?username,
      'version': ?version,
    };
  }

  factory PrestoLinkedService.fromMap(Map<String, dynamic> map) {
    return PrestoLinkedService(
      allowHostNameCNMismatch: map['allowHostNameCNMismatch'] == null ? null : map['allowHostNameCNMismatch'],
      allowSelfSignedServerCert: map['allowSelfSignedServerCert'] == null ? null : map['allowSelfSignedServerCert'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] as String,
      catalog: map['catalog'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      enableServerCertificateValidation: map['enableServerCertificateValidation'] == null ? null : map['enableServerCertificateValidation'],
      enableSsl: map['enableSsl'] == null ? null : map['enableSsl'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      host: map['host'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'],
      serverVersion: map['serverVersion'] == null ? null : map['serverVersion'],
      timeZoneID: map['timeZoneID'] == null ? null : map['timeZoneID'],
      trustedCertPath: map['trustedCertPath'] == null ? null : map['trustedCertPath'],
      type: map['type'] as String,
      useSystemTrustStore: map['useSystemTrustStore'] == null ? null : map['useSystemTrustStore'],
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

