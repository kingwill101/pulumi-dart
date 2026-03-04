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
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReferenceResponse,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'hostKeyFingerprint': ?hostKeyFingerprint,
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
      'passPhrase':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(passPhrase, (value) => value.toMap()),
      'password':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(password, (value) => value.toMap()),
      'port': ?port,
      'privateKeyContent':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(privateKeyContent, (value) => value.toMap()),
      'privateKeyPath': ?privateKeyPath,
      'skipHostKeyValidation': ?skipHostKeyValidation,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory SftpServerLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return SftpServerLinkedServiceResponse(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      authenticationType: (() {
        final guardedValue = map['authenticationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      host: pulumi.Input.fromValue(map['host']),
      hostKeyFingerprint: (() {
        final guardedValue = map['hostKeyFingerprint'];
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
      passPhrase: (() {
        final guardedValue = map['passPhrase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
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
      privateKeyContent: (() {
        final guardedValue = map['privateKeyContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateKeyPath: (() {
        final guardedValue = map['privateKeyPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      skipHostKeyValidation: (() {
        final guardedValue = map['skipHostKeyValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
