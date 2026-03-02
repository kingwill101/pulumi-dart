// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// A linked service for an SSH File Transfer Protocol (SFTP) server.
class SftpServerLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The authentication type to be used to connect to the FTP server.
  final pulumi.Input<String>? authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The SFTP server host name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> host;
  /// The host key finger-print of the SFTP server. When SkipHostKeyValidation is false, HostKeyFingerprint should be specified. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? hostKeyFingerprint;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The password to decrypt the SSH private key if the SSH private key is encrypted.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? passPhrase;
  /// Password to logon the SFTP server for Basic authentication.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;
  /// The TCP port number that the SFTP server uses to listen for client connections. Default value is 22. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? port;
  /// Base64 encoded SSH private key content for SshPublicKey authentication. For on-premises copy with SshPublicKey authentication, either PrivateKeyPath or PrivateKeyContent should be specified. SSH private key should be OpenSSH format.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? privateKeyContent;
  /// The SSH private key file path for SshPublicKey authentication. Only valid for on-premises copy. For on-premises copy with SshPublicKey authentication, either PrivateKeyPath or PrivateKeyContent should be specified. SSH private key should be OpenSSH format. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? privateKeyPath;
  /// If true, skip the SSH host key validation. Default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? skipHostKeyValidation;
  /// Type of linked service.
  /// Expected value is 'Sftp'.
  final pulumi.Input<String> type;
  /// The username used to log on to the SFTP server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [SftpServerLinkedServiceResponse].
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
  SftpServerLinkedServiceResponse({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'hostKeyFingerprint': ?hostKeyFingerprint,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'passPhrase': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(passPhrase, (value) => value.toMap()),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'port': ?port,
      'privateKeyContent': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(privateKeyContent, (value) => value.toMap()),
      'privateKeyPath': ?privateKeyPath,
      'skipHostKeyValidation': ?skipHostKeyValidation,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory SftpServerLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return SftpServerLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']! as String).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      host: (map['host']).input(),
      hostKeyFingerprint: map['hostKeyFingerprint'] == null ? null : (map['hostKeyFingerprint']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      passPhrase: map['passPhrase'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['passPhrase']! as Map).cast<String, dynamic>())).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port']!).input(),
      privateKeyContent: map['privateKeyContent'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['privateKeyContent']! as Map).cast<String, dynamic>())).input(),
      privateKeyPath: map['privateKeyPath'] == null ? null : (map['privateKeyPath']!).input(),
      skipHostKeyValidation: map['skipHostKeyValidation'] == null ? null : (map['skipHostKeyValidation']!).input(),
      type: (map['type'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

