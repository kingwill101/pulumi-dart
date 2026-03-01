// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Hive Server linked service.
class HiveLinkedService {
  /// Specifies whether to require a CA-issued SSL certificate name to match the host name of the server when connecting over SSL. The default value is false.
  final dynamic allowHostNameCNMismatch;
  /// Specifies whether to allow self-signed certificates from the server. The default value is false.
  final dynamic allowSelfSignedServerCert;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication method used to access the Hive server.
  final String authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// Specifies whether the connections to the server will validate server certificate, the default value is True. Only used for Version 2.0
  final dynamic enableServerCertificateValidation;
  /// Specifies whether the connections to the server are encrypted using SSL. The default value is false.
  final dynamic enableSsl;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// IP address or host name of the Hive server, separated by ';' for multiple hosts (only when serviceDiscoveryMode is enable).
  final dynamic host;
  /// The partial URL corresponding to the Hive server.
  final dynamic httpPath;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The password corresponding to the user name that you provided in the Username field
  final AzureKeyVaultSecretReference? password;
  /// The TCP port that the Hive server uses to listen for client connections.
  final dynamic port;
  /// The type of Hive server.
  final String? serverType;
  /// true to indicate using the ZooKeeper service, false not.
  final dynamic serviceDiscoveryMode;
  /// The transport protocol to use in the Thrift layer.
  final String? thriftTransportProtocol;
  /// The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR.
  final dynamic trustedCertPath;
  /// Type of linked service.
  /// Expected value is 'Hive'.
  final String type;
  /// Specifies whether the driver uses native HiveQL queries,or converts them into an equivalent form in HiveQL.
  final dynamic useNativeQuery;
  /// Specifies whether to use a CA certificate from the system trust store or from a specified PEM file. The default value is false.
  final dynamic useSystemTrustStore;
  /// The user name that you use to access Hive Server.
  final dynamic username;
  /// Version of the linked service.
  final String? version;
  /// The namespace on ZooKeeper under which Hive Server 2 nodes are added.
  final dynamic zooKeeperNameSpace;

  /// Creates a new [HiveLinkedService].
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
  HiveLinkedService({
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
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'enableServerCertificateValidation': ?enableServerCertificateValidation,
      'enableSsl': ?enableSsl,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'httpPath': ?httpPath,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
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

  factory HiveLinkedService.fromMap(Map<String, dynamic> map) {
    return HiveLinkedService(
      allowHostNameCNMismatch: map['allowHostNameCNMismatch'] == null ? null : map['allowHostNameCNMismatch'],
      allowSelfSignedServerCert: map['allowSelfSignedServerCert'] == null ? null : map['allowSelfSignedServerCert'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] as String,
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      enableServerCertificateValidation: map['enableServerCertificateValidation'] == null ? null : map['enableServerCertificateValidation'],
      enableSsl: map['enableSsl'] == null ? null : map['enableSsl'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      host: map['host'],
      httpPath: map['httpPath'] == null ? null : map['httpPath'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'],
      serverType: map['serverType'] == null ? null : map['serverType'] as String,
      serviceDiscoveryMode: map['serviceDiscoveryMode'] == null ? null : map['serviceDiscoveryMode'],
      thriftTransportProtocol: map['thriftTransportProtocol'] == null ? null : map['thriftTransportProtocol'] as String,
      trustedCertPath: map['trustedCertPath'] == null ? null : map['trustedCertPath'],
      type: map['type'] as String,
      useNativeQuery: map['useNativeQuery'] == null ? null : map['useNativeQuery'],
      useSystemTrustStore: map['useSystemTrustStore'] == null ? null : map['useSystemTrustStore'],
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
      zooKeeperNameSpace: map['zooKeeperNameSpace'] == null ? null : map['zooKeeperNameSpace'],
    );
  }
}

