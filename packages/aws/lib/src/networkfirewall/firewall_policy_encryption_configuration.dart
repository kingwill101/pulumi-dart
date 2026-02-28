// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyEncryptionConfiguration {
  /// The ID of the customer managed key. You can use any of the [key identifiers](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id) that KMS supports, unless you're using a key that's managed by another account. If you're using a key managed by another account, then specify the key ARN.
  final String? keyId;

  /// The type of AWS KMS key to use for encryption of your Network Firewall resources. Valid values are `CUSTOMER_KMS` and `AWS_OWNED_KMS_KEY`.
  final String type;

  /// Creates a new [FirewallPolicyEncryptionConfiguration].
  /// [keyId] The ID of the customer managed key. You can use any of the [key identifiers](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id) that KMS supports, unless you're using a key that's managed by another account. If you're using a key managed by another account, then specify the key ARN.
  /// [type] The type of AWS KMS key to use for encryption of your Network Firewall resources. Valid values are `CUSTOMER_KMS` and `AWS_OWNED_KMS_KEY`.
  FirewallPolicyEncryptionConfiguration({
    this.keyId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyIdValue = keyId;
    if (keyIdValue != null) {
      map['keyId'] = keyIdValue;
    }
    map['type'] = type;
    return map;
  }

  factory FirewallPolicyEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyEncryptionConfiguration(
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
      type: map['type'] as String,
    );
  }
}
