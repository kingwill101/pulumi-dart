// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallEncryptionConfiguration {
  /// The ID of the AWS Key Management Service (AWS KMS) customer managed key.
  final String keyId;
  /// The type of the AWS Key Management Service (AWS KMS) key use by the firewall.
  final String type;

  /// Creates a new [GetFirewallEncryptionConfiguration].
  /// [keyId] The ID of the AWS Key Management Service (AWS KMS) customer managed key.
  /// [type] The type of the AWS Key Management Service (AWS KMS) key use by the firewall.
  GetFirewallEncryptionConfiguration({
    required this.keyId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'type': type,
    };
  }

  factory GetFirewallEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return GetFirewallEncryptionConfiguration(
      keyId: map['keyId'] as String,
      type: map['type'] as String,
    );
  }
}

