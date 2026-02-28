// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oslogin_v1beta_ssh_public_key_oslogin_v1beta_args_doc}
/// The set of arguments for SshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_oslogin_v1beta_ssh_public_key_oslogin_v1beta_args_doc}
class SshPublicKeyOsloginV1betaArgs {
  /// An expiration time in microseconds since epoch.
  final pulumi.Input<String>? expirationTimeUsec;

  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final pulumi.Input<String>? key;
  final pulumi.Input<String> userId;

  /// Creates a new [SshPublicKeyOsloginV1betaArgs].
  /// [expirationTimeUsec] An expiration time in microseconds since epoch.
  /// [key] Public key text in SSH format, defined by RFC4253 section 6.6.
  /// [userId] Required.
  SshPublicKeyOsloginV1betaArgs({
    String? expirationTimeUsec,
    String? key,
    required String userId,
  })  : expirationTimeUsec =
            pulumi.Input.asOptionalInput<String>(expirationTimeUsec),
        key = pulumi.Input.asOptionalInput<String>(key),
        userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expirationTimeUsecValue = expirationTimeUsec;
    if (expirationTimeUsecValue != null) {
      map['expirationTimeUsec'] = expirationTimeUsecValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    map['userId'] = userId;
    return map;
  }

  factory SshPublicKeyOsloginV1betaArgs.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyOsloginV1betaArgs(
      expirationTimeUsec: map['expirationTimeUsec'] == null
          ? null
          : map['expirationTimeUsec'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      userId: map['userId'] as String,
    );
  }
}
