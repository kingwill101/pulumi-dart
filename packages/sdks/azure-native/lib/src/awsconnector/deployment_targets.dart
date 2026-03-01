// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DeploymentTargets
class DeploymentTargets {
  /// The filter type you want to apply on organizational units and accounts.
  final String? accountFilterType;
  /// AWS accounts that you want to create stack instances in the specified Region(s) for.
  final List<String>? accounts;
  /// Returns the value of the AccountsUrl property.
  final String? accountsUrl;
  /// The organization root ID or organizational unit (OU) IDs to which StackSets deploys.
  final List<String>? organizationalUnitIds;

  /// Creates a new [DeploymentTargets].
  /// [accountFilterType] The filter type you want to apply on organizational units and accounts.
  /// [accounts] AWS accounts that you want to create stack instances in the specified Region(s) for.
  /// [accountsUrl] Returns the value of the AccountsUrl property.
  /// [organizationalUnitIds] The organization root ID or organizational unit (OU) IDs to which StackSets deploys.
  DeploymentTargets({
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

  factory DeploymentTargets.fromMap(Map<String, dynamic> map) {
    return DeploymentTargets(
      accountFilterType: map['accountFilterType'] == null ? null : map['accountFilterType'] as String,
      accounts: map['accounts'] == null ? null : (map['accounts'] as List).cast<String>(),
      accountsUrl: map['accountsUrl'] == null ? null : map['accountsUrl'] as String,
      organizationalUnitIds: map['organizationalUnitIds'] == null ? null : (map['organizationalUnitIds'] as List).cast<String>(),
    );
  }
}

