// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// A linked service for an SSH File Transfer Protocol (SFTP) server.
class SftpServerLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication type to be used to connect to the FTP server.
  final String? authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The SFTP server host name. Type: string (or Expression with resultType string).
  final dynamic host;
  /// The host key finger-print of the SFTP server. When SkipHostKeyValidation is false, HostKeyFingerprint should be specified. Type: string (or Expression with resultType string).
  final dynamic hostKeyFingerprint;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The password to decrypt the SSH private key if the SSH private key is encrypted.
  final AzureKeyVaultSecretReference? passPhrase;
  /// Password to logon the SFTP server for Basic authentication.
  final AzureKeyVaultSecretReference? password;
  /// The TCP port number that the SFTP server uses to listen for client connections. Default value is 22. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic port;
  /// Base64 encoded SSH private key content for SshPublicKey authentication. For on-premises copy with SshPublicKey authentication, either PrivateKeyPath or PrivateKeyContent should be specified. SSH private key should be OpenSSH format.
  final AzureKeyVaultSecretReference? privateKeyContent;
  /// The SSH private key file path for SshPublicKey authentication. Only valid for on-premises copy. For on-premises copy with SshPublicKey authentication, either PrivateKeyPath or PrivateKeyContent should be specified. SSH private key should be OpenSSH format. Type: string (or Expression with resultType string).
  final dynamic privateKeyPath;
  /// If true, skip the SSH host key validation. Default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic skipHostKeyValidation;
  /// Type of linked service.
  /// Expected value is 'Sftp'.
  final String type;
  /// The username used to log on to the SFTP server. Type: string (or Expression with resultType string).
  final dynamic userName;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [SftpServerLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication type to be used to connect to the FTP server.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] The SFTP server host name. Type: string (or Expression with resultType string).
  /// [hostKeyFingerprint] The host key finger-print of the SFTP server. When SkipHostKeyValidation is false, HostKeyFingerprint should be specified. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [passPhrase] The password to decrypt the SSH private key if the SSH private key is encrypted.
  /// [password] Password to logon the SFTP server for Basic authentication.
  /// [port] The TCP port number that the SFTP server uses to listen for client connections. Default value is 22. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [privateKeyContent] Base64 encoded SSH private key content for SshPublicKey authentication. For on-premises copy with SshPublicKey authentication, either PrivateKeyPath or PrivateKeyContent should be specified. SSH private key should be OpenSSH format.
  /// [privateKeyPath] The SSH private key file path for SshPublicKey authentication. Only valid for on-premises copy. For on-premises copy with SshPublicKey authentication, either PrivateKeyPath or PrivateKeyContent should be specified. SSH private key should be OpenSSH format. Type: string (or Expression with resultType string).
  /// [skipHostKeyValidation] If true, skip the SSH host key validation. Default value is false. Type: boolean (or Expression with resultType boolean).
  /// [type] Type of linked service.
  /// [userName] The username used to log on to the SFTP server. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  SftpServerLinkedService({
    this.annotations,
    this.authenticationType,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.host,
    this.hostKeyFingerprint,
    this.parameters,
    this.passPhrase,
    this.password,
    this.port,
    this.privateKeyContent,
    this.privateKeyPath,
    this.skipHostKeyValidation,
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
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'hostKeyFingerprint': ?hostKeyFingerprint,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'passPhrase': ?passPhrase == null ? null : passPhrase!.toMap(),
      'password': ?password == null ? null : password!.toMap(),
      'port': ?port,
      'privateKeyContent': ?privateKeyContent == null ? null : privateKeyContent!.toMap(),
      'privateKeyPath': ?privateKeyPath,
      'skipHostKeyValidation': ?skipHostKeyValidation,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory SftpServerLinkedService.fromMap(Map<String, dynamic> map) {
    return SftpServerLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      host: map['host'],
      hostKeyFingerprint: map['hostKeyFingerprint'] == null ? null : map['hostKeyFingerprint'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      passPhrase: map['passPhrase'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['passPhrase'] as Map).cast<String, dynamic>()),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'],
      privateKeyContent: map['privateKeyContent'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['privateKeyContent'] as Map).cast<String, dynamic>()),
      privateKeyPath: map['privateKeyPath'] == null ? null : map['privateKeyPath'],
      skipHostKeyValidation: map['skipHostKeyValidation'] == null ? null : map['skipHostKeyValidation'],
      type: map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

