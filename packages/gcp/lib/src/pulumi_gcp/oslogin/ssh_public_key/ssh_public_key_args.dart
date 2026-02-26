// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SshPublicKey.
class SshPublicKeyArgs {
  /// An expiration time in microseconds since epoch.
  final Input<String>? expirationTimeUsec;

  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final Input<String> key;

  /// The project ID of the Google Cloud Platform project.
  final Input<String>? project;

  /// The user email.
  final Input<String> user;

  SshPublicKeyArgs({
    this.expirationTimeUsec,
    required this.key,
    this.project,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expirationTimeUsecValue = expirationTimeUsec;
    if (expirationTimeUsecValue != null) {
      map['expirationTimeUsec'] = expirationTimeUsecValue;
    }
    map['key'] = key;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['user'] = user;
    return map;
  }

  factory SshPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyArgs(
      expirationTimeUsec:
          Input.asOptionalInput<String>(map['expirationTimeUsec']),
      key: Input.asInput<String>(map['key']),
      project: Input.asOptionalInput<String>(map['project']),
      user: Input.asInput<String>(map['user']),
    );
  }
}
