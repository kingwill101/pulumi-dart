// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Hive Server linked service.
class HiveLinkedServiceResponse {
  /// Specifies whether to require a CA-issued SSL certificate name to match the host name of the server when connecting over SSL. The default value is false.
  final pulumi.Input<dynamic>? allowHostNameCNMismatch;

  /// Specifies whether to allow self-signed certificates from the server. The default value is false.
  final pulumi.Input<dynamic>? allowSelfSignedServerCert;

  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The authentication method used to access the Hive server.
  final pulumi.Input<String> authenticationType;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// Specifies whether the connections to the server will validate server certificate, the default value is True. Only used for Version 2.0
  final pulumi.Input<dynamic>? enableServerCertificateValidation;

  /// Specifies whether the connections to the server are encrypted using SSL. The default value is false.
  final pulumi.Input<dynamic>? enableSsl;

  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;

  /// IP address or host name of the Hive server, separated by ';' for multiple hosts (only when serviceDiscoveryMode is enable).
  final pulumi.Input<dynamic> host;

  /// The partial URL corresponding to the Hive server.
  final pulumi.Input<dynamic>? httpPath;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// The password corresponding to the user name that you provided in the Username field
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;

  /// The TCP port that the Hive server uses to listen for client connections.
  final pulumi.Input<dynamic>? port;

  /// The type of Hive server.
  final pulumi.Input<String>? serverType;

  /// true to indicate using the ZooKeeper service, false not.
  final pulumi.Input<dynamic>? serviceDiscoveryMode;

  /// The transport protocol to use in the Thrift layer.
  final pulumi.Input<String>? thriftTransportProtocol;

  /// The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR.
  final pulumi.Input<dynamic>? trustedCertPath;

  /// Type of linked service.
  /// Expected value is 'Hive'.
  final pulumi.Input<String> type;

  /// Specifies whether the driver uses native HiveQL queries,or converts them into an equivalent form in HiveQL.
  final pulumi.Input<dynamic>? useNativeQuery;

  /// Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false.
  final pulumi.Input<dynamic>? useSystemTrustStore;

  /// The user name that you use to access Hive Server.
  final pulumi.Input<dynamic>? username;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// The namespace on ZooKeeper under which Hive Server 2 nodes are added.
  final pulumi.Input<dynamic>? zooKeeperNameSpace;

  /// Creates a new [HiveLinkedServiceResponse].
  /// [allowHostNameCNMismatch] Specifies whether to require a CA-issued SSL certificate name to match the host name of the server when connecting over SSL. The default value is false.
  /// [allowSelfSignedServerCert] Specifies whether to allow self-signed certificates from the server. The default value is false.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication method used to access the Hive server.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [enableServerCertificateValidation] Specifies whether the connections to the server will validate server certificate, the default value is True. Only used for Version 2.0
  /// [enableSsl] Specifies whether the connections to the server are encrypted using SSL. The default value is false.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] IP address or host name of the Hive server, separated by ';' for multiple hosts (only when serviceDiscoveryMode is enable).
  /// [httpPath] The partial URL corresponding to the Hive server.
  /// [parameters] Parameters for linked service.
  /// [password] The password corresponding to the user name that you provided in the Username field
  /// [port] The TCP port that the Hive server uses to listen for client connections.
  /// [serverType] The type of Hive server.
  /// [serviceDiscoveryMode] true to indicate using the ZooKeeper service, false not.
  /// [thriftTransportProtocol] The transport protocol to use in the Thrift layer.
  /// [trustedCertPath] The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR.
  /// [type] Type of linked service.
  /// [useNativeQuery] Specifies whether the driver uses native HiveQL queries,or converts them into an equivalent form in HiveQL.
  /// [useSystemTrustStore] Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false.
  /// [username] The user name that you use to access Hive Server.
  /// [version] Version of the linked service.
  /// [zooKeeperNameSpace] The namespace on ZooKeeper under which Hive Server 2 nodes are added.
  HiveLinkedServiceResponse({
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
    this.port,
    this.serverType,
    this.serviceDiscoveryMode,
    this.thriftTransportProtocol,
    this.trustedCertPath,
    required this.type,
    this.useNativeQuery,
    this.useSystemTrustStore,
    this.username,
    this.version,
    this.zooKeeperNameSpace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowHostNameCNMismatch': ?allowHostNameCNMismatch,
      'allowSelfSignedServerCert': ?allowSelfSignedServerCert,
      'annotations': ?annotations,
      'authenticationType': authenticationType,
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReferenceResponse,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'description': ?description,
      'enableServerCertificateValidation': ?enableServerCertificateValidation,
      'enableSsl': ?enableSsl,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'httpPath': ?httpPath,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecificationResponse>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'password':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(password, (value) => value.toMap()),
      'port': ?port,
      'serverType': ?serverType,
      'serviceDiscoveryMode': ?serviceDiscoveryMode,
      'thriftTransportProtocol': ?thriftTransportProtocol,
      'trustedCertPath': ?trustedCertPath,
      'type': type,
      'useNativeQuery': ?useNativeQuery,
      'useSystemTrustStore': ?useSystemTrustStore,
      'username': ?username,
      'version': ?version,
      'zooKeeperNameSpace': ?zooKeeperNameSpace,
    };
  }

  factory HiveLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return HiveLinkedServiceResponse(
      allowHostNameCNMismatch: (() {
        final guardedValue = map['allowHostNameCNMismatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      allowSelfSignedServerCert: (() {
        final guardedValue = map['allowSelfSignedServerCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      authenticationType: pulumi.Input.fromValue(
        map['authenticationType'] as String,
      ),
      connectVia: (() {
        final guardedValue = map['connectVia'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableServerCertificateValidation: (() {
        final guardedValue = map['enableServerCertificateValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      enableSsl: (() {
        final guardedValue = map['enableSsl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      host: pulumi.Input.fromValue(map['host']),
      httpPath: (() {
        final guardedValue = map['httpPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(
            guardedValue,
            (value) => ParameterSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      serverType: (() {
        final guardedValue = map['serverType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceDiscoveryMode: (() {
        final guardedValue = map['serviceDiscoveryMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      thriftTransportProtocol: (() {
        final guardedValue = map['thriftTransportProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trustedCertPath: (() {
        final guardedValue = map['trustedCertPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useNativeQuery: (() {
        final guardedValue = map['useNativeQuery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      useSystemTrustStore: (() {
        final guardedValue = map['useSystemTrustStore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zooKeeperNameSpace: (() {
        final guardedValue = map['zooKeeperNameSpace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
