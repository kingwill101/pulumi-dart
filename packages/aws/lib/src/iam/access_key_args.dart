// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_access_key_access_key_args_doc}
/// The set of arguments for AccessKey.
/// {@endtemplate}
/// {@macro pulumi_iam_access_key_access_key_args_doc}
class AccessKeyArgs {
  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`, for use in the `encrypted_secret` output attribute. If providing a base-64 encoded PGP public key, make sure to provide the "raw" version and not the "armored" one (e.g. avoid passing the `-a` option to `gpg --export`).
  final pulumi.Input<String>? pgpKey;

  /// Access key status to apply. Defaults to `Active`. Valid values are `Active` and `Inactive`.
  final pulumi.Input<String>? status;

  /// IAM user to associate with this access key.
  final pulumi.Input<String> user;

  /// Creates a new [AccessKeyArgs].
  /// [pgpKey] Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`, for use in the `encrypted_secret` output attribute. If providing a base-64 encoded PGP public key, make sure to provide the "raw" version and not the "armored" one (e.g. avoid passing the `-a` option to `gpg --export`).
  /// [status] Access key status to apply. Defaults to `Active`. Valid values are `Active` and `Inactive`.
  /// [user] IAM user to associate with this access key.
  AccessKeyArgs({
    String? pgpKey,
    String? status,
    required String user,
  })  : pgpKey = pulumi.Input.asOptionalInput<String>(pgpKey),
        status = pulumi.Input.asOptionalInput<String>(status),
        user = pulumi.Input.asInput<String>(user);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pgpKeyValue = pgpKey;
    if (pgpKeyValue != null) {
      map['pgpKey'] = pgpKeyValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    map['user'] = user;
    return map;
  }

  factory AccessKeyArgs.fromMap(Map<String, dynamic> map) {
    return AccessKeyArgs(
      pgpKey: map['pgpKey'] == null ? null : map['pgpKey'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      user: map['user'] as String,
    );
  }
}
