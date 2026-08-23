// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DeploymentTargets
class DeploymentTargets {
  /// The filter type you want to apply on organizational units and accounts.
  final pulumi.Input<String>? accountFilterType;
  /// AWS accounts that you want to create stack instances in the specified Region(s) for.
  final pulumi.Input<List<String>>? accounts;
  /// Returns the value of the AccountsUrl property.
  final pulumi.Input<String>? accountsUrl;
  /// The organization root ID or organizational unit (OU) IDs to which StackSets deploys.
  final pulumi.Input<List<String>>? organizationalUnitIds;

  /// Creates a new [DeploymentTargets].
  /// [accountFilterType] The filter type you want to apply on organizational units and accounts.
  /// [accounts] AWS accounts that you want to create stack instances in the specified Region(s) for.
  /// [accountsUrl] Returns the value of the AccountsUrl property.
  /// [organizationalUnitIds] The organization root ID or organizational unit (OU) IDs to which StackSets deploys.
  const DeploymentTargets({
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
      accountFilterType: (() { final guardedValue = map['accountFilterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      accountsUrl: (() { final guardedValue = map['accountsUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnitIds: (() { final guardedValue = map['organizationalUnitIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
