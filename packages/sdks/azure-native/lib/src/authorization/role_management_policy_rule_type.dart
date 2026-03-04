/// The type of rule
enum RoleManagementPolicyRuleType {
  valueRoleManagementPolicyApprovalRule("RoleManagementPolicyApprovalRule"),
  valueRoleManagementPolicyAuthenticationContextRule(
    "RoleManagementPolicyAuthenticationContextRule",
  ),
  valueRoleManagementPolicyEnablementRule("RoleManagementPolicyEnablementRule"),
  valueRoleManagementPolicyExpirationRule("RoleManagementPolicyExpirationRule"),
  valueRoleManagementPolicyNotificationRule(
    "RoleManagementPolicyNotificationRule",
  ),
  valueRoleManagementPolicyPimOnlyModeRule(
    "RoleManagementPolicyPimOnlyModeRule",
  );

  const RoleManagementPolicyRuleType(this.wireValue);
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
