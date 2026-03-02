// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DeploymentTargets
class DeploymentTargetsResponse {
  /// The filter type you want to apply on organizational units and accounts.
  final pulumi.Input<String>? accountFilterType;
  /// AWS accounts that you want to create stack instances in the specified Region(s) for.
  final pulumi.Input<List<String>>? accounts;
  /// Returns the value of the AccountsUrl property.
  final pulumi.Input<String>? accountsUrl;
  /// The organization root ID or organizational unit (OU) IDs to which StackSets deploys.
  final pulumi.Input<List<String>>? organizationalUnitIds;

  /// Creates a new [DeploymentTargetsResponse].
  /// [accountFilterType] The filter type you want to apply on organizational units and accounts.
  /// [accounts] AWS accounts that you want to create stack instances in the specified Region(s) for.
  /// [accountsUrl] Returns the value of the AccountsUrl property.
  /// [organizationalUnitIds] The organization root ID or organizational unit (OU) IDs to which StackSets deploys.
  DeploymentTargetsResponse({
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

  factory DeploymentTargetsResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentTargetsResponse(
      accountFilterType: map['accountFilterType'] == null ? null : (map['accountFilterType']! as String).input(),
      accounts: map['accounts'] == null ? null : ((map['accounts']! as List).cast<String>()).input(),
      accountsUrl: map['accountsUrl'] == null ? null : (map['accountsUrl']! as String).input(),
      organizationalUnitIds: map['organizationalUnitIds'] == null ? null : ((map['organizationalUnitIds']! as List).cast<String>()).input(),
    );
  }
}

