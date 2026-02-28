// ignore_for_file: unused_element, unnecessary_cast

class DomainDomainSettingsDockerSettings {
  /// Indicates whether the domain can access Docker. Valid values are `ENABLED` and `DISABLED`.
  final String? enableDockerAccess;

  /// The list of Amazon Web Services accounts that are trusted when the domain is created in VPC-only mode.
  final List<String>? vpcOnlyTrustedAccounts;

  /// Creates a new [DomainDomainSettingsDockerSettings].
  /// [enableDockerAccess] Indicates whether the domain can access Docker. Valid values are `ENABLED` and `DISABLED`.
  /// [vpcOnlyTrustedAccounts] The list of Amazon Web Services accounts that are trusted when the domain is created in VPC-only mode.
  DomainDomainSettingsDockerSettings({
    this.enableDockerAccess,
    this.vpcOnlyTrustedAccounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableDockerAccessValue = enableDockerAccess;
    if (enableDockerAccessValue != null) {
      map['enableDockerAccess'] = enableDockerAccessValue;
    }
    final vpcOnlyTrustedAccountsValue = vpcOnlyTrustedAccounts;
    if (vpcOnlyTrustedAccountsValue != null) {
      map['vpcOnlyTrustedAccounts'] = vpcOnlyTrustedAccountsValue;
    }
    return map;
  }

  factory DomainDomainSettingsDockerSettings.fromMap(Map<String, dynamic> map) {
    return DomainDomainSettingsDockerSettings(
      enableDockerAccess: map['enableDockerAccess'] == null
          ? null
          : map['enableDockerAccess'] as String,
      vpcOnlyTrustedAccounts: map['vpcOnlyTrustedAccounts'] == null
          ? null
          : (map['vpcOnlyTrustedAccounts'] as List).cast<String>(),
    );
  }
}
