/// The type of rule
enum RoleManagementPolicyRuleType {
  roleManagementPolicyApprovalRule("RoleManagementPolicyApprovalRule"),
  roleManagementPolicyAuthenticationContextRule("RoleManagementPolicyAuthenticationContextRule"),
  roleManagementPolicyEnablementRule("RoleManagementPolicyEnablementRule"),
  roleManagementPolicyExpirationRule("RoleManagementPolicyExpirationRule"),
  roleManagementPolicyNotificationRule("RoleManagementPolicyNotificationRule"),
  roleManagementPolicyPimOnlyModeRule("RoleManagementPolicyPimOnlyModeRule");

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
