// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallEncryptionConfiguration {
  /// The ID of the KMS customer managed key.
  final pulumi.Input<String> keyId;
  /// The type of the KMS key use by the firewall.
  final pulumi.Input<String> type;

  /// Creates a new [GetFirewallEncryptionConfiguration].
  /// [keyId] The ID of the KMS customer managed key.
  /// [type] The type of the KMS key use by the firewall.
  const GetFirewallEncryptionConfiguration({
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
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
