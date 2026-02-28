// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oslogin_v1_ssh_public_key_args_doc}
/// The set of arguments for SshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_oslogin_v1_ssh_public_key_args_doc}
class SshPublicKeyArgs {
  /// An expiration time in microseconds since epoch.
  final pulumi.Input<String>? expirationTimeUsec;
  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final pulumi.Input<String>? key;
  final pulumi.Input<String> userId;

  /// Creates a new [SshPublicKeyArgs].
  /// [expirationTimeUsec] An expiration time in microseconds since epoch.
  /// [key] Public key text in SSH format, defined by RFC4253 section 6.6.
  /// [userId] Required.
  SshPublicKeyArgs({
    String? expirationTimeUsec,
    String? key,
    required String userId,
  }) :
      expirationTimeUsec = pulumi.Input.asOptionalInput<String>(expirationTimeUsec),
      key = pulumi.Input.asOptionalInput<String>(key),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTimeUsec': ?expirationTimeUsec,
      'key': ?key,
      'userId': userId,
    };
  }

  factory SshPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyArgs(
      expirationTimeUsec: map['expirationTimeUsec'] == null ? null : map['expirationTimeUsec'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      userId: map['userId'] as String,
    );
  }
}

