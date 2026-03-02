// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Presto server linked service. This linked service has supported version property. The Version 1.0 is scheduled for deprecation while your pipeline will continue to run after EOL but without any bug fix or new features.
class PrestoLinkedServiceResponse {
  /// Specifies whether to require a CA-issued SSL certificate name to match the host name of the server when connecting over SSL. The default value is false. Only used for Version 1.0.
  final pulumi.Input<dynamic>? allowHostNameCNMismatch;
  /// Specifies whether to allow self-signed certificates from the server. The default value is false. Only used for Version 1.0.
  final pulumi.Input<dynamic>? allowSelfSignedServerCert;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The authentication mechanism used to connect to the Presto server.
  final pulumi.Input<String> authenticationType;
  /// The catalog context for all request against the server.
  final pulumi.Input<dynamic> catalog;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// Specifies whether the connections to the server will validate server certificate, the default value is True. Only used for Version 2.0
  final pulumi.Input<dynamic>? enableServerCertificateValidation;
  /// Specifies whether the connections to the server are encrypted using SSL. The default value for legacy version is False. The default value for version 2.0 is True.
  final pulumi.Input<dynamic>? enableSsl;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The IP address or host name of the Presto server. (i.e. 192.168.222.160)
  final pulumi.Input<dynamic> host;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The password corresponding to the user name.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;
  /// The TCP port that the Presto server uses to listen for client connections. The default value is 8080 when disable SSL, default value is 443 when enable SSL.
  final pulumi.Input<dynamic>? port;
  /// The version of the Presto server. (i.e. 0.148-t) Only used for Version 1.0.
  final pulumi.Input<dynamic>? serverVersion;
  /// The local time zone used by the connection. Valid values for this option are specified in the IANA Time Zone Database. The default value for Version 1.0 is the client system time zone. The default value for Version 2.0 is server system timeZone
  final pulumi.Input<dynamic>? timeZoneID;
  /// The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR. Only used for Version 1.0.
  final pulumi.Input<dynamic>? trustedCertPath;
  /// Type of linked service.
  /// Expected value is 'Presto'.
  final pulumi.Input<String> type;
  /// Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false. Only used for Version 1.0.
  final pulumi.Input<dynamic>? useSystemTrustStore;
  /// The user name used to connect to the Presto server.
  final pulumi.Input<dynamic>? username;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [PrestoLinkedServiceResponse].
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
  PrestoLinkedServiceResponse({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'enableServerCertificateValidation': ?enableServerCertificateValidation,
      'enableSsl': ?enableSsl,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
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

  factory PrestoLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return PrestoLinkedServiceResponse(
      allowHostNameCNMismatch: map['allowHostNameCNMismatch'] == null ? null : (map['allowHostNameCNMismatch']!).input(),
      allowSelfSignedServerCert: map['allowSelfSignedServerCert'] == null ? null : (map['allowSelfSignedServerCert']!).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      authenticationType: (map['authenticationType'] as String).input(),
      catalog: (map['catalog']).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enableServerCertificateValidation: map['enableServerCertificateValidation'] == null ? null : (map['enableServerCertificateValidation']!).input(),
      enableSsl: map['enableSsl'] == null ? null : (map['enableSsl']!).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      host: (map['host']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port']!).input(),
      serverVersion: map['serverVersion'] == null ? null : (map['serverVersion']!).input(),
      timeZoneID: map['timeZoneID'] == null ? null : (map['timeZoneID']!).input(),
      trustedCertPath: map['trustedCertPath'] == null ? null : (map['trustedCertPath']!).input(),
      type: (map['type'] as String).input(),
      useSystemTrustStore: map['useSystemTrustStore'] == null ? null : (map['useSystemTrustStore']!).input(),
      username: map['username'] == null ? null : (map['username']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

