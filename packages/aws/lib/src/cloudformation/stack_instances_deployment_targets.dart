// ignore_for_file: unused_element, unnecessary_cast

class StackInstancesDeploymentTargets {
  /// Limit deployment targets to individual accounts or include additional accounts with provided OUs. Valid values: `INTERSECTION`, `DIFFERENCE`, `UNION`, `NONE`.
  final String? accountFilterType;

  /// List of accounts to deploy stack set updates.
  final List<String>? accounts;

  /// S3 URL of the file containing the list of accounts.
  final String? accountsUrl;

  /// Organization root ID or organizational unit (OU) IDs to which stack sets deploy.
  final List<String>? organizationalUnitIds;

  /// Creates a new [StackInstancesDeploymentTargets].
  /// [accountFilterType] Limit deployment targets to individual accounts or include additional accounts with provided OUs. Valid values: `INTERSECTION`, `DIFFERENCE`, `UNION`, `NONE`.
  /// [accounts] List of accounts to deploy stack set updates.
  /// [accountsUrl] S3 URL of the file containing the list of accounts.
  /// [organizationalUnitIds] Organization root ID or organizational unit (OU) IDs to which stack sets deploy.
  StackInstancesDeploymentTargets({
    this.accountFilterType,
    this.accounts,
    this.accountsUrl,
    this.organizationalUnitIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountFilterType': ?accountFilterType,
      'accounts': ?accounts,
      'accountsUrl': ?accountsUrl,
      'organizationalUnitIds': ?organizationalUnitIds,
    };
  }

  factory StackInstancesDeploymentTargets.fromMap(Map<String, dynamic> map) {
    return StackInstancesDeploymentTargets(
      accountFilterType: map['accountFilterType'] == null
          ? null
          : map['accountFilterType'] as String,
      accounts: map['accounts'] == null
          ? null
          : (map['accounts'] as List).cast<String>(),
      accountsUrl: map['accountsUrl'] == null
          ? null
          : map['accountsUrl'] as String,
      organizationalUnitIds: map['organizationalUnitIds'] == null
          ? null
          : (map['organizationalUnitIds'] as List).cast<String>(),
    );
  }
}
