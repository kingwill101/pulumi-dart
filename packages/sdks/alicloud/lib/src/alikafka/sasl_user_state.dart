// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SaslUser resources.
class SaslUserState {
  /// The instance ID.
  final pulumi.Input<String>? instanceId;
  /// An KMS encrypts password used to a db account. You have to specify one of `password` and `kms_encrypted_password` fields.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a user with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// The encryption method. Valid values:
  /// - SCRAM-SHA-512. This is the default value.
  /// - SCRAM-SHA-256
  /// > **NOTE:**   This parameter is available only for serverless ApsaraMQ for Kafka instances.
  final pulumi.Input<String>? mechanism;
  /// The password of the SASL user. It may consist of letters, digits, or underlines, with a length of 1 to 64 characters. You have to specify one of `password` and `kms_encrypted_password` fields.
  final pulumi.Input<String>? password;
  /// The authentication mechanism. Default value: `plain`. Valid values:
  final pulumi.Input<String>? type;
  /// The name of the SASL user. The length should between `1` to `64` characters. The characters can only contain `a`-`z`, `A`-`Z`, `0`-`9`, `_` and `-`.
  final pulumi.Input<String>? username;

  /// Creates a new [SaslUserState].
  /// [instanceId] The instance ID.
  /// [kmsEncryptedPassword] An KMS encrypts password used to a db account. You have to specify one of `password` and `kms_encrypted_password` fields.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a user with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [mechanism] The encryption method. Valid values:
  /// [password] The password of the SASL user. It may consist of letters, digits, or underlines, with a length of 1 to 64 characters. You have to specify one of `password` and `kms_encrypted_password` fields.
  /// [type] The authentication mechanism. Default value: `plain`. Valid values:
  /// [username] The name of the SASL user. The length should between `1` to `64` characters. The characters can only contain `a`-`z`, `A`-`Z`, `0`-`9`, `_` and `-`.
  SaslUserState({
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? kmsEncryptedPassword,
    pulumi.Output<Map<String, String>>? kmsEncryptionContext,
    pulumi.Output<String>? mechanism,
    pulumi.Output<String>? password,
    pulumi.Output<String>? type,
    pulumi.Output<String>? username,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext),
      mechanism = pulumi.Input.asOptionalInput<String>(mechanism),
      password = pulumi.Input.asOptionalInput<String>(password),
      type = pulumi.Input.asOptionalInput<String>(type),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'mechanism': ?mechanism,
      'password': ?password,
      'type': ?type,
      'username': ?username,
    };
  }

  factory SaslUserState.fromMap(Map<String, dynamic> map) {
    return SaslUserState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptedPassword'] as String),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['kmsEncryptionContext'] as Map).cast<String, String>()),
      mechanism: map['mechanism'] == null ? null : pulumi.Output.create<String>(map['mechanism'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

