// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupEncryptionConfiguration {
  /// The ID of the customer managed key. You can use any of the [key identifiers](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id) that KMS supports, unless you're using a key that's managed by another account. If you're using a key managed by another account, then specify the key ARN.
  final pulumi.Input<String>? keyId;
  /// The type of AWS KMS key to use for encryption of your Network Firewall resources. Valid values are `CUSTOMER_KMS` and `AWS_OWNED_KMS_KEY`.
  final pulumi.Input<String> type;

  /// Creates a new [RuleGroupEncryptionConfiguration].
  /// [keyId] The ID of the customer managed key. You can use any of the [key identifiers](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id) that KMS supports, unless you're using a key that's managed by another account. If you're using a key managed by another account, then specify the key ARN.
  /// [type] The type of AWS KMS key to use for encryption of your Network Firewall resources. Valid values are `CUSTOMER_KMS` and `AWS_OWNED_KMS_KEY`.
  RuleGroupEncryptionConfiguration({
    this.keyId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
      'type': type,
    };
  }

  factory RuleGroupEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return RuleGroupEncryptionConfiguration(
      keyId: map['keyId'] == null ? null : ((map['keyId'] as String).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

