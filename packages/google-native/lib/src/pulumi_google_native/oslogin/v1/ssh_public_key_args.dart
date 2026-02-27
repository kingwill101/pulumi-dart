// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for SshPublicKey.
class SshPublicKeyArgs {
  /// An expiration time in microseconds since epoch.
  final Input<String>? expirationTimeUsec;

  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final Input<String>? key;
  final Input<String> userId;

  SshPublicKeyArgs({
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

  factory SshPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyArgs(
      expirationTimeUsec:
          Input.asOptionalInput<String>(map['expirationTimeUsec']),
      key: Input.asOptionalInput<String>(map['key']),
      userId: Input.asInput<String>(map['userId']),
    );
  }
}
