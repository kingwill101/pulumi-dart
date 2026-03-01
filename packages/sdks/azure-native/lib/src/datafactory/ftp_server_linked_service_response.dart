// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// A FTP server Linked Service.
class FtpServerLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication type to be used to connect to the FTP server.
  final String? authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Linked service description.
  final String? description;
  /// If true, validate the FTP server SSL certificate when connect over SSL/TLS channel. Default value is true. Type: boolean (or Expression with resultType boolean).
  final dynamic enableServerCertificateValidation;
  /// If true, connect to the FTP server over SSL/TLS channel. Default value is true. Type: boolean (or Expression with resultType boolean).
  final dynamic enableSsl;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Host name of the FTP server. Type: string (or Expression with resultType string).
  final dynamic host;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Password to logon the FTP server.
  final AzureKeyVaultSecretReferenceResponse? password;
  /// The TCP port number that the FTP server uses to listen for client connections. Default value is 21. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic port;
  /// Type of linked service.
  /// Expected value is 'FtpServer'.
  final String type;
  /// Username to logon the FTP server. Type: string (or Expression with resultType string).
  final dynamic userName;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [FtpServerLinkedServiceResponse].
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
  FtpServerLinkedServiceResponse({
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
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'enableServerCertificateValidation': ?enableServerCertificateValidation,
      'enableSsl': ?enableSsl,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'port': ?port,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory FtpServerLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return FtpServerLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      enableServerCertificateValidation: map['enableServerCertificateValidation'] == null ? null : map['enableServerCertificateValidation'],
      enableSsl: map['enableSsl'] == null ? null : map['enableSsl'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      host: map['host'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'],
      type: map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

