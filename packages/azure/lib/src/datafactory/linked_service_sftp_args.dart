// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_sftp_key_vault_password.dart';
import 'linked_service_sftp_key_vault_private_key_content_base64.dart';
import 'linked_service_sftp_key_vault_private_key_passphrase.dart';

/// {@template pulumi_datafactory_linked_service_sftp_linked_service_sftp_args_doc}
/// The set of arguments for LinkedServiceSftp.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_sftp_linked_service_sftp_args_doc}
class LinkedServiceSftpArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to SFTP Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The type of authentication used to connect to the SFTP server. Valid options are `MultiFactor`, `Basic` and `SshPublicKey`.
  final pulumi.Input<String> authenticationType;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The SFTP server hostname.
  final pulumi.Input<String> host;
  /// The host key fingerprint of the SFTP server.
  final pulumi.Input<String>? hostKeyFingerprint;
  /// The name of the integration runtime to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  /// A `key_vault_password` block as defined below.
  ///
  /// > **Note:** Either `password` or `key_vault_password` is required when `authentication_type` is set to `Basic`.
  final pulumi.Input<List<LinkedServiceSftpKeyVaultPassword>>? keyVaultPasswords;
  /// A `key_vault_private_key_content_base64` block as defined below.
  final pulumi.Input<LinkedServiceSftpKeyVaultPrivateKeyContentBase64>? keyVaultPrivateKeyContentBase64;
  /// A `key_vault_private_key_passphrase` block as defined below.
  ///
  /// > **Note:** One of `private_key_content_base64` or `private_key_path` (or their Key Vault equivalent) is required when `authentication_type` is set to `SshPublicKey`.
  final pulumi.Input<LinkedServiceSftpKeyVaultPrivateKeyPassphrase>? keyVaultPrivateKeyPassphrase;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Password to log on to the SFTP Server for Basic Authentication.
  final pulumi.Input<String>? password;
  /// The TCP port number that the SFTP server uses to listen for client connection. Default value is 22.
  final pulumi.Input<int> port;
  /// The Base64 encoded private key content in OpenSSH format used to log on to the SFTP server.
  final pulumi.Input<String>? privateKeyContentBase64;
  /// The passphrase for the private key if the key is encrypted.
  final pulumi.Input<String>? privateKeyPassphrase;
  /// The absolute path to the private key file that the self-hosted integration runtime can access.
  ///
  /// > **Note:** `private_key_path` only applies when using a self-hosted integration runtime (instead of the default Azure provided runtime), as indicated by supplying a value for `integration_runtime_name`.
  final pulumi.Input<String>? privateKeyPath;
  /// Whether to validate host key fingerprint while connecting. If set to `false`, `host_key_fingerprint` must also be set.
  final pulumi.Input<bool>? skipHostKeyValidation;
  /// The username used to log on to the SFTP server.
  final pulumi.Input<String> username;

  /// Creates a new [LinkedServiceSftpArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [authenticationType] The type of authentication used to connect to the SFTP server. Valid options are `MultiFactor`, `Basic` and `SshPublicKey`.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [host] The SFTP server hostname.
  /// [hostKeyFingerprint] The host key fingerprint of the SFTP server.
  /// [integrationRuntimeName] The name of the integration runtime to associate with the Data Factory Linked Service.
  /// [keyVaultPasswords] A `key_vault_password` block as defined below.
  /// [keyVaultPrivateKeyContentBase64] A `key_vault_private_key_content_base64` block as defined below.
  /// [keyVaultPrivateKeyPassphrase] A `key_vault_private_key_passphrase` block as defined below.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [password] Password to log on to the SFTP Server for Basic Authentication.
  /// [port] The TCP port number that the SFTP server uses to listen for client connection. Default value is 22.
  /// [privateKeyContentBase64] The Base64 encoded private key content in OpenSSH format used to log on to the SFTP server.
  /// [privateKeyPassphrase] The passphrase for the private key if the key is encrypted.
  /// [privateKeyPath] The absolute path to the private key file that the self-hosted integration runtime can access.
  /// [skipHostKeyValidation] Whether to validate host key fingerprint while connecting. If set to `false`, `host_key_fingerprint` must also be set.
  /// [username] The username used to log on to the SFTP server.
  LinkedServiceSftpArgs({
    Map<String, String>? additionalProperties,
    List<String>? annotations,
    required String authenticationType,
    required String dataFactoryId,
    String? description,
    required String host,
    String? hostKeyFingerprint,
    String? integrationRuntimeName,
    List<LinkedServiceSftpKeyVaultPassword>? keyVaultPasswords,
    LinkedServiceSftpKeyVaultPrivateKeyContentBase64? keyVaultPrivateKeyContentBase64,
    LinkedServiceSftpKeyVaultPrivateKeyPassphrase? keyVaultPrivateKeyPassphrase,
    String? name,
    Map<String, String>? parameters,
    String? password,
    required int port,
    String? privateKeyContentBase64,
    String? privateKeyPassphrase,
    String? privateKeyPath,
    bool? skipHostKeyValidation,
    required String username,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      authenticationType = pulumi.Input.asInput<String>(authenticationType),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      host = pulumi.Input.asInput<String>(host),
      hostKeyFingerprint = pulumi.Input.asOptionalInput<String>(hostKeyFingerprint),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      keyVaultPasswords = pulumi.Input.asOptionalInput<List<LinkedServiceSftpKeyVaultPassword>>(keyVaultPasswords),
      keyVaultPrivateKeyContentBase64 = pulumi.Input.asOptionalInput<LinkedServiceSftpKeyVaultPrivateKeyContentBase64>(keyVaultPrivateKeyContentBase64),
      keyVaultPrivateKeyPassphrase = pulumi.Input.asOptionalInput<LinkedServiceSftpKeyVaultPrivateKeyPassphrase>(keyVaultPrivateKeyPassphrase),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      password = pulumi.Input.asOptionalInput<String>(password),
      port = pulumi.Input.asInput<int>(port),
      privateKeyContentBase64 = pulumi.Input.asOptionalInput<String>(privateKeyContentBase64),
      privateKeyPassphrase = pulumi.Input.asOptionalInput<String>(privateKeyPassphrase),
      privateKeyPath = pulumi.Input.asOptionalInput<String>(privateKeyPath),
      skipHostKeyValidation = pulumi.Input.asOptionalInput<bool>(skipHostKeyValidation),
      username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'authenticationType': authenticationType,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'host': host,
      'hostKeyFingerprint': ?hostKeyFingerprint,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultPasswords': ?pulumi.Input.mapOptionalInputValue<List<LinkedServiceSftpKeyVaultPassword>, List<Map<String, dynamic>>>(keyVaultPasswords, (value) => pulumi.Input.encodeList<LinkedServiceSftpKeyVaultPassword, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyVaultPrivateKeyContentBase64': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSftpKeyVaultPrivateKeyContentBase64, Map<String, dynamic>>(keyVaultPrivateKeyContentBase64, (value) => value.toMap()),
      'keyVaultPrivateKeyPassphrase': ?pulumi.Input.mapOptionalInputValue<LinkedServiceSftpKeyVaultPrivateKeyPassphrase, Map<String, dynamic>>(keyVaultPrivateKeyPassphrase, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'password': ?password,
      'port': port,
      'privateKeyContentBase64': ?privateKeyContentBase64,
      'privateKeyPassphrase': ?privateKeyPassphrase,
      'privateKeyPath': ?privateKeyPath,
      'skipHostKeyValidation': ?skipHostKeyValidation,
      'username': username,
    };
  }

  factory LinkedServiceSftpArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceSftpArgs(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as Map).cast<String, String>(),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      authenticationType: map['authenticationType'] as String,
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      host: map['host'] as String,
      hostKeyFingerprint: map['hostKeyFingerprint'] == null ? null : map['hostKeyFingerprint'] as String,
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : map['integrationRuntimeName'] as String,
      keyVaultPasswords: map['keyVaultPasswords'] == null ? null : pulumi.Input.decodeList<LinkedServiceSftpKeyVaultPassword>(map['keyVaultPasswords'], (value) => LinkedServiceSftpKeyVaultPassword.fromMap((value as Map).cast<String, dynamic>())),
      keyVaultPrivateKeyContentBase64: map['keyVaultPrivateKeyContentBase64'] == null ? null : LinkedServiceSftpKeyVaultPrivateKeyContentBase64.fromMap((map['keyVaultPrivateKeyContentBase64'] as Map).cast<String, dynamic>()),
      keyVaultPrivateKeyPassphrase: map['keyVaultPrivateKeyPassphrase'] == null ? null : LinkedServiceSftpKeyVaultPrivateKeyPassphrase.fromMap((map['keyVaultPrivateKeyPassphrase'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] as int,
      privateKeyContentBase64: map['privateKeyContentBase64'] == null ? null : map['privateKeyContentBase64'] as String,
      privateKeyPassphrase: map['privateKeyPassphrase'] == null ? null : map['privateKeyPassphrase'] as String,
      privateKeyPath: map['privateKeyPath'] == null ? null : map['privateKeyPath'] as String,
      skipHostKeyValidation: map['skipHostKeyValidation'] == null ? null : map['skipHostKeyValidation'] as bool,
      username: map['username'] as String,
    );
  }
}

