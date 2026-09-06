import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of rule
enum RoleManagementPolicyRuleType implements pulumi.PulumiEnum<String> {
  roleManagementPolicyApprovalRule("RoleManagementPolicyApprovalRule"),
  roleManagementPolicyAuthenticationContextRule("RoleManagementPolicyAuthenticationContextRule"),
  roleManagementPolicyEnablementRule("RoleManagementPolicyEnablementRule"),
  roleManagementPolicyExpirationRule("RoleManagementPolicyExpirationRule"),
  roleManagementPolicyNotificationRule("RoleManagementPolicyNotificationRule"),
  roleManagementPolicyPimOnlyModeRule("RoleManagementPolicyPimOnlyModeRule");

  const RoleManagementPolicyRuleType(this.wireValue);
  @override
  final String wireValue;

  static RoleManagementPolicyRuleType fromValue(String value) {
    for (final item in RoleManagementPolicyRuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleManagementPolicyRuleType value: $value');
  }
}
