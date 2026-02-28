// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oslogin_ssh_public_key_ssh_public_key_args_doc}
/// The set of arguments for SshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_oslogin_ssh_public_key_ssh_public_key_args_doc}
class SshPublicKeyArgs {
  /// An expiration time in microseconds since epoch.
  final pulumi.Input<String>? expirationTimeUsec;

  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final pulumi.Input<String> key;

  /// The project ID of the Google Cloud Platform project.
  final pulumi.Input<String>? project;

  /// The user email.
  final pulumi.Input<String> user;

  /// Creates a new [SshPublicKeyArgs].
  /// [expirationTimeUsec] An expiration time in microseconds since epoch.
  /// [key] Public key text in SSH format, defined by RFC4253 section 6.6.
  /// [project] The project ID of the Google Cloud Platform project.
  /// [user] The user email.
  SshPublicKeyArgs({
    String? expirationTimeUsec,
    required String key,
    String? project,
    required String user,
  })  : expirationTimeUsec =
            pulumi.Input.asOptionalInput<String>(expirationTimeUsec),
        key = pulumi.Input.asInput<String>(key),
        project = pulumi.Input.asOptionalInput<String>(project),
        user = pulumi.Input.asInput<String>(user);

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
      expirationTimeUsec: map['expirationTimeUsec'] == null
          ? null
          : map['expirationTimeUsec'] as String,
      key: map['key'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      user: map['user'] as String,
    );
  }
}
