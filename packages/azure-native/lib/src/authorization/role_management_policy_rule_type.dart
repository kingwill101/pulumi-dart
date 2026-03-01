/// The type of rule
enum RoleManagementPolicyRuleType {
  valueRoleManagementPolicyApprovalRule("RoleManagementPolicyApprovalRule"),
  valueRoleManagementPolicyAuthenticationContextRule("RoleManagementPolicyAuthenticationContextRule"),
  valueRoleManagementPolicyEnablementRule("RoleManagementPolicyEnablementRule"),
  valueRoleManagementPolicyExpirationRule("RoleManagementPolicyExpirationRule"),
  valueRoleManagementPolicyNotificationRule("RoleManagementPolicyNotificationRule"),
  valueRoleManagementPolicyPimOnlyModeRule("RoleManagementPolicyPimOnlyModeRule");

  const RoleManagementPolicyRuleType(this.value);
  final String value;

  static RoleManagementPolicyRuleType fromValue(String value) {
    for (final item in RoleManagementPolicyRuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleManagementPolicyRuleType value: $value');
  }
}

