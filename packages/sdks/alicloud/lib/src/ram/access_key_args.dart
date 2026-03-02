// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_access_key_access_key_args_doc}
/// The set of arguments for AccessKey.
/// {@endtemplate}
/// {@macro pulumi_ram_access_key_access_key_args_doc}
class AccessKeyArgs {
  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`
  final pulumi.Input<String>? pgpKey;
  /// The name of file that can save access key id and access key secret. Strongly suggest you to specified it when you creating access key, otherwise, you wouldn't get its secret ever.
  final pulumi.Input<String>? secretFile;
  /// The status of the AccessKey. Value:
  /// - Active: Activated.
  /// - Inactive: Disabled.
  final pulumi.Input<String>? status;
  /// The RAM user name.
  final pulumi.Input<String>? userName;

  /// Creates a new [AccessKeyArgs].
  /// [pgpKey] Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`
  /// [secretFile] The name of file that can save access key id and access key secret. Strongly suggest you to specified it when you creating access key, otherwise, you wouldn't get its secret ever.
  /// [status] The status of the AccessKey. Value:
  /// [userName] The RAM user name.
  AccessKeyArgs({
    this.pgpKey,
    this.secretFile,
    this.status,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pgpKey': ?pgpKey,
      'secretFile': ?secretFile,
      'status': ?status,
      'userName': ?userName,
    };
  }

  factory AccessKeyArgs.fromMap(Map<String, dynamic> map) {
    return AccessKeyArgs(
      pgpKey: map['pgpKey'] == null ? null : (map['pgpKey']! as String).input(),
      secretFile: map['secretFile'] == null ? null : (map['secretFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

