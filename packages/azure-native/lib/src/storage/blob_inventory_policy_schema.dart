// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_inventory_policy_rule.dart';

/// The storage account blob inventory policy rules.
class BlobInventoryPolicySchema {
  /// Policy is enabled if set to true.
  final bool enabled;
  /// The storage account blob inventory policy rules. The rule is applied when it is enabled.
  final List<BlobInventoryPolicyRule> rules;
  /// The valid value is Inventory
  final String type;

  /// Creates a new [BlobInventoryPolicySchema].
  /// [enabled] Policy is enabled if set to true.
  /// [rules] The storage account blob inventory policy rules. The rule is applied when it is enabled.
  /// [type] The valid value is Inventory
  BlobInventoryPolicySchema({
    required this.enabled,
    required this.rules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rules': pulumi.Input.encodeList<BlobInventoryPolicyRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'type': type,
    };
  }

  factory BlobInventoryPolicySchema.fromMap(Map<String, dynamic> map) {
    return BlobInventoryPolicySchema(
      enabled: map['enabled'] as bool,
      rules: pulumi.Input.decodeList<BlobInventoryPolicyRule>(map['rules'], (value) => BlobInventoryPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

