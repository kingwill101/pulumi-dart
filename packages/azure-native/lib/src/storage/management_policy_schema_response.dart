// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_rule_response.dart';

/// The Storage Account ManagementPolicies Rules. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
class ManagementPolicySchemaResponse {
  /// The Storage Account ManagementPolicies Rules. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
  final List<ManagementPolicyRuleResponse> rules;

  /// Creates a new [ManagementPolicySchemaResponse].
  /// [rules] The Storage Account ManagementPolicies Rules. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
  ManagementPolicySchemaResponse({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.encodeList<ManagementPolicyRuleResponse, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory ManagementPolicySchemaResponse.fromMap(Map<String, dynamic> map) {
    return ManagementPolicySchemaResponse(
      rules: pulumi.Input.decodeList<ManagementPolicyRuleResponse>(map['rules'], (value) => ManagementPolicyRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

