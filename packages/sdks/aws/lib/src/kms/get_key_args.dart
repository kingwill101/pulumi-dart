// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_key_get_key_args_doc}
/// Arguments for getKey.
/// {@endtemplate}
/// {@macro pulumi_kms_get_key_get_key_args_doc}
class GetKeyArgs {
  /// List of grant tokens.
  final pulumi.Input<List<String>?>? grantTokens;
  /// Key identifier. Can be a key ID (e.g. `1234abcd-12ab-34cd-56ef-1234567890ab`), key ARN (e.g. `arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`), alias name (e.g. `alias/my-key`), or alias ARN (e.g. `arn:aws:kms:us-east-1:111122223333:alias/my-key`).
  final pulumi.Input<String> keyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetKeyArgs].
  /// [grantTokens] List of grant tokens.
  /// [keyId] Key identifier. Can be a key ID (e.g. `1234abcd-12ab-34cd-56ef-1234567890ab`), key ARN (e.g. `arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`), alias name (e.g. `alias/my-key`), or alias ARN (e.g. `arn:aws:kms:us-east-1:111122223333:alias/my-key`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetKeyArgs({
    this.grantTokens,
    required this.keyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantTokens': ?grantTokens,
      'keyId': keyId,
      'region': ?region,
    };
  }

  factory GetKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyArgs(
      grantTokens: (() { final guardedValue = map['grantTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
