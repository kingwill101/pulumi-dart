// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// HBase server linked service.
class HBaseLinkedService {
  /// Specifies whether to require a CA-issued SSL certificate name to match the host name of the server when connecting over SSL. The default value is false.
  final pulumi.Input<dynamic>? allowHostNameCNMismatch;
  /// Specifies whether to allow self-signed certificates from the server. The default value is false.
  final pulumi.Input<dynamic>? allowSelfSignedServerCert;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The authentication mechanism to use to connect to the HBase server.
  final pulumi.Input<String> authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// Specifies whether the connections to the server are encrypted using SSL. The default value is false.
  final pulumi.Input<dynamic>? enableSsl;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The IP address or host name of the HBase server. (i.e. 192.168.222.160)
  final pulumi.Input<dynamic> host;
  /// The partial URL corresponding to the HBase server. (i.e. /gateway/sandbox/hbase/version)
  final pulumi.Input<dynamic>? httpPath;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The password corresponding to the user name.
  final pulumi.Input<AzureKeyVaultSecretReference>? password;
  /// The TCP port that the HBase instance uses to listen for client connections. The default value is 9090.
  final pulumi.Input<dynamic>? port;
  /// The full path of the .pem file containing trusted CA certificates for verifying the server when connecting over SSL. This property can only be set when using SSL on self-hosted IR. The default value is the cacerts.pem file installed with the IR.
  final pulumi.Input<dynamic>? trustedCertPath;
  /// Type of linked service.
  /// Expected value is 'HBase'.
  final pulumi.Input<String> type;
  /// The user name used to connect to the HBase instance.
  final pulumi.Input<dynamic>? username;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [HBaseLinkedService].
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
  HBaseLinkedService({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'enableSsl': ?enableSsl,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'httpPath': ?httpPath,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
      'port': ?port,
      'trustedCertPath': ?trustedCertPath,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory HBaseLinkedService.fromMap(Map<String, dynamic> map) {
    return HBaseLinkedService(
      allowHostNameCNMismatch: map['allowHostNameCNMismatch'] == null ? null : (map['allowHostNameCNMismatch']!).input(),
      allowSelfSignedServerCert: map['allowSelfSignedServerCert'] == null ? null : (map['allowSelfSignedServerCert']!).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      authenticationType: (map['authenticationType'] as String).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enableSsl: map['enableSsl'] == null ? null : (map['enableSsl']!).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      host: (map['host']).input(),
      httpPath: map['httpPath'] == null ? null : (map['httpPath']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port']!).input(),
      trustedCertPath: map['trustedCertPath'] == null ? null : (map['trustedCertPath']!).input(),
      type: (map['type'] as String).input(),
      username: map['username'] == null ? null : (map['username']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

