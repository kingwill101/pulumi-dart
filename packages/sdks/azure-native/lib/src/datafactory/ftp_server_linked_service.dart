// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// A FTP server Linked Service.
class FtpServerLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The authentication type to be used to connect to the FTP server.
  final pulumi.Input<String>? authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// If true, validate the FTP server SSL certificate when connect over SSL/TLS channel. Default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableServerCertificateValidation;
  /// If true, connect to the FTP server over SSL/TLS channel. Default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableSsl;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Host name of the FTP server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> host;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// Password to logon the FTP server.
  final pulumi.Input<AzureKeyVaultSecretReference>? password;
  /// The TCP port number that the FTP server uses to listen for client connections. Default value is 21. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? port;
  /// Type of linked service.
  /// Expected value is 'FtpServer'.
  final pulumi.Input<String> type;
  /// Username to logon the FTP server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [FtpServerLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication type to be used to connect to the FTP server.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [enableServerCertificateValidation] If true, validate the FTP server SSL certificate when connect over SSL/TLS channel. Default value is true. Type: boolean (or Expression with resultType boolean).
  /// [enableSsl] If true, connect to the FTP server over SSL/TLS channel. Default value is true. Type: boolean (or Expression with resultType boolean).
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] Host name of the FTP server. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [password] Password to logon the FTP server.
  /// [port] The TCP port number that the FTP server uses to listen for client connections. Default value is 21. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [type] Type of linked service.
  /// [userName] Username to logon the FTP server. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  FtpServerLinkedService({
    this.annotations,
    this.authenticationType,
    this.connectVia,
    this.description,
    this.enableServerCertificateValidation,
    this.enableSsl,
    this.encryptedCredential,
    required this.host,
    this.parameters,
    this.password,
    this.port,
    required this.type,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'enableServerCertificateValidation': ?enableServerCertificateValidation,
      'enableSsl': ?enableSsl,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
      'port': ?port,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory FtpServerLinkedService.fromMap(Map<String, dynamic> map) {
    return FtpServerLinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']! as String).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enableServerCertificateValidation: map['enableServerCertificateValidation'] == null ? null : (map['enableServerCertificateValidation']!).input(),
      enableSsl: map['enableSsl'] == null ? null : (map['enableSsl']!).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      host: (map['host']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port']!).input(),
      type: (map['type'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

