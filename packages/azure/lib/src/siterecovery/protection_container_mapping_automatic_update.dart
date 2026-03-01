// ignore_for_file: unused_element, unnecessary_cast


class ProtectionContainerMappingAutomaticUpdate {
  /// The authentication type used for automation account. Possible values are `RunAsAccount` and `SystemAssignedIdentity`. Defaults to `SystemAssignedIdentity`.
  ///
  /// > **Note:** `RunAsAccount` of `authentication_type` is deprecated and will retire on September 30, 2023. Details could be found [here](https://learn.microsoft.com/en-us/azure/automation/whats-new#support-for-run-as-accounts).
  final String? authenticationType;
  /// The automation account ID which holds the automatic update runbook and authenticates to Azure resources.
  ///
  /// > **Note:** `automation_account_id` is required when `enabled` is specified.
  final String? automationAccountId;
  /// Should the Mobility service installed on Azure virtual machines be automatically updated. Defaults to `false`.
  ///
  /// > **Note:** The setting applies to all Azure VMs protected in the same container. For more details see [this document](https://learn.microsoft.com/en-us/azure/site-recovery/azure-to-azure-autoupdate#enable-automatic-updates)
  final bool? enabled;

  /// Creates a new [ProtectionContainerMappingAutomaticUpdate].
  /// [authenticationType] The authentication type used for automation account. Possible values are `RunAsAccount` and `SystemAssignedIdentity`. Defaults to `SystemAssignedIdentity`.
  /// [automationAccountId] The automation account ID which holds the automatic update runbook and authenticates to Azure resources.
  /// [enabled] Should the Mobility service installed on Azure virtual machines be automatically updated. Defaults to `false`.
  ProtectionContainerMappingAutomaticUpdate({
    this.authenticationType,
    this.automationAccountId,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'automationAccountId': ?automationAccountId,
      'enabled': ?enabled,
    };
  }

  factory ProtectionContainerMappingAutomaticUpdate.fromMap(Map<String, dynamic> map) {
    return ProtectionContainerMappingAutomaticUpdate(
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      automationAccountId: map['automationAccountId'] == null ? null : map['automationAccountId'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

