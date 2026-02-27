// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKey.
class GetKeyKmsArgs {
  /// List of grant tokens
  final pulumi.Input<List<String>>? grantTokens;

  /// Key identifier which can be one of the following format:
  /// * Key ID. E.g: `1234abcd-12ab-34cd-56ef-1234567890ab`
  /// * Key ARN. E.g.: `arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
  /// * Alias name. E.g.: `alias/my-key`
  /// * Alias ARN: E.g.: `arn:aws:kms:us-east-1:111122223333:alias/my-key`
  final pulumi.Input<String> keyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetKeyKmsArgs({
    this.grantTokens,
    required this.keyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final grantTokensValue = grantTokens;
    if (grantTokensValue != null) {
      map['grantTokens'] = grantTokensValue;
    }
    map['keyId'] = keyId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetKeyKmsArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyKmsArgs(
      grantTokens:
          pulumi.Input.asOptionalInput<List<String>>(map['grantTokens']),
      keyId: pulumi.Input.asInput<String>(map['keyId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
