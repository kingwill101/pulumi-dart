// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_rule.dart';

/// The Storage Account ManagementPolicies Rules. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
class ManagementPolicySchema {
  /// The Storage Account ManagementPolicies Rules. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
  final List<ManagementPolicyRule> rules;

  /// Creates a new [ManagementPolicySchema].
  /// [rules] The Storage Account ManagementPolicies Rules. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
  ManagementPolicySchema({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.encodeList<ManagementPolicyRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory ManagementPolicySchema.fromMap(Map<String, dynamic> map) {
    return ManagementPolicySchema(
      rules: pulumi.Input.decodeList<ManagementPolicyRule>(map['rules'], (value) => ManagementPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

