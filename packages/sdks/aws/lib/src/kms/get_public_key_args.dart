// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_public_key_get_public_key_args_doc}
/// Arguments for getPublicKey.
/// {@endtemplate}
/// {@macro pulumi_kms_get_public_key_get_public_key_args_doc}
class GetPublicKeyArgs {
  /// List of grant tokens
  final pulumi.Input<List<String>?>? grantTokens;
  /// Key identifier which can be one of the following format:
  /// * Key ID. E.g - `1234abcd-12ab-34cd-56ef-1234567890ab`
  /// * Key ARN. E.g. - `arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
  /// * Alias name. E.g. - `alias/my-key`
  /// * Alias ARN - E.g. - `arn:aws:kms:us-east-1:111122223333:alias/my-key`
  final pulumi.Input<String> keyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetPublicKeyArgs].
  /// [grantTokens] List of grant tokens
  /// [keyId] Key identifier which can be one of the following format:
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetPublicKeyArgs({
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

  factory GetPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicKeyArgs(
      grantTokens: (() { final guardedValue = map['grantTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
