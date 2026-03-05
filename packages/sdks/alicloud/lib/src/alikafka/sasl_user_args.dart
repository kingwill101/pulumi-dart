// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alikafka_sasl_user_sasl_user_args_doc}
/// The set of arguments for SaslUser.
/// {@endtemplate}
/// {@macro pulumi_alikafka_sasl_user_sasl_user_args_doc}
class SaslUserArgs {
  /// The instance ID.
  final pulumi.Input<String> instanceId;
  /// An KMS encrypts password used to a db account. You have to specify one of `password` and `kms_encrypted_password` fields.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a user with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// The encryption method. Valid values:
  /// - SCRAM-SHA-512. This is the default value.
  /// - SCRAM-SHA-256
  /// &gt; **NOTE:**   This parameter is available only for serverless ApsaraMQ for Kafka instances.
  final pulumi.Input<String>? mechanism;
  /// The password of the SASL user. It may consist of letters, digits, or underlines, with a length of 1 to 64 characters. You have to specify one of `password` and `kms_encrypted_password` fields.
  final pulumi.Input<String>? password;
  /// The authentication mechanism. Default value: `plain`. Valid values:
  final pulumi.Input<String>? type;
  /// The name of the SASL user. The length should between `1` to `64` characters. The characters can only contain `a`-`z`, `A`-`Z`, `0`-`9`, `_` and `-`.
  final pulumi.Input<String> username;

  /// Creates a new [SaslUserArgs].
  /// [instanceId] The instance ID.
  /// [kmsEncryptedPassword] An KMS encrypts password used to a db account. You have to specify one of `password` and `kms_encrypted_password` fields.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a user with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [mechanism] The encryption method. Valid values:
  /// [password] The password of the SASL user. It may consist of letters, digits, or underlines, with a length of 1 to 64 characters. You have to specify one of `password` and `kms_encrypted_password` fields.
  /// [type] The authentication mechanism. Default value: `plain`. Valid values:
  /// [username] The name of the SASL user. The length should between `1` to `64` characters. The characters can only contain `a`-`z`, `A`-`Z`, `0`-`9`, `_` and `-`.
  SaslUserArgs({
    required this.instanceId,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
    this.mechanism,
    this.password,
    this.type,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'mechanism': ?mechanism,
      'password': ?password,
      'type': ?type,
      'username': username,
    };
  }

  factory SaslUserArgs.fromMap(Map<String, dynamic> map) {
    return SaslUserArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      kmsEncryptedPassword: (() { final guardedValue = map['kmsEncryptedPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsEncryptionContext: (() { final guardedValue = map['kmsEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mechanism: (() { final guardedValue = map['mechanism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

