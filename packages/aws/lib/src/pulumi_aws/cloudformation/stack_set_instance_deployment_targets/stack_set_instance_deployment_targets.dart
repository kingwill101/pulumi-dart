// ignore_for_file: unused_element, unnecessary_cast

class StackSetInstanceDeploymentTargets {
  /// Limit deployment targets to individual accounts or include additional accounts with provided OUs. Valid values: `INTERSECTION`, `DIFFERENCE`, `UNION`, `NONE`.
  final String? accountFilterType;

  /// List of accounts to deploy stack set updates.
  final List<String>? accounts;

  /// S3 URL of the file containing the list of accounts.
  final String? accountsUrl;

  /// Organization root ID or organizational unit (OU) IDs to which StackSets deploys.
  final List<String>? organizationalUnitIds;

  StackSetInstanceDeploymentTargets({
    this.accountFilterType,
    this.accounts,
    this.accountsUrl,
    this.organizationalUnitIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountFilterTypeValue = accountFilterType;
    if (accountFilterTypeValue != null) {
      map['accountFilterType'] = accountFilterTypeValue;
    }
    final accountsValue = accounts;
    if (accountsValue != null) {
      map['accounts'] = accountsValue;
    }
    final accountsUrlValue = accountsUrl;
    if (accountsUrlValue != null) {
      map['accountsUrl'] = accountsUrlValue;
    }
    final organizationalUnitIdsValue = organizationalUnitIds;
    if (organizationalUnitIdsValue != null) {
      map['organizationalUnitIds'] = organizationalUnitIdsValue;
    }
    return map;
  }

  factory StackSetInstanceDeploymentTargets.fromMap(Map<String, dynamic> map) {
    return StackSetInstanceDeploymentTargets(
      accountFilterType: map['accountFilterType'] == null
          ? null
          : map['accountFilterType'] as String,
      accounts: map['accounts'] == null
          ? null
          : (map['accounts'] as List).cast<String>(),
      accountsUrl:
          map['accountsUrl'] == null ? null : map['accountsUrl'] as String,
      organizationalUnitIds: map['organizationalUnitIds'] == null
          ? null
          : (map['organizationalUnitIds'] as List).cast<String>(),
    );
  }
}
