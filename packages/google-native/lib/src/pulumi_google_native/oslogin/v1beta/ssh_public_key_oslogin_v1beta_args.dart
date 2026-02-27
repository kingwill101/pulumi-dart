// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SshPublicKey.
class SshPublicKeyOsloginV1betaArgs {
  /// An expiration time in microseconds since epoch.
  final pulumi.Input<String>? expirationTimeUsec;

  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final pulumi.Input<String>? key;
  final pulumi.Input<String> userId;

  SshPublicKeyOsloginV1betaArgs({
    this.expirationTimeUsec,
    this.key,
    required this.userId,
  });

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
      expirationTimeUsec:
          pulumi.Input.asOptionalInput<String>(map['expirationTimeUsec']),
      key: pulumi.Input.asOptionalInput<String>(map['key']),
      userId: pulumi.Input.asInput<String>(map['userId']),
    );
  }
}
