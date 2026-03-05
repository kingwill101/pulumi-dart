// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackSetInstanceDeploymentTargets {
  /// Limit deployment targets to individual accounts or include additional accounts with provided OUs. Valid values: `INTERSECTION`, `DIFFERENCE`, `UNION`, `NONE`.
  final pulumi.Input<String>? accountFilterType;
  /// List of accounts to deploy stack set updates.
  final pulumi.Input<List<String>>? accounts;
  /// S3 URL of the file containing the list of accounts.
  final pulumi.Input<String>? accountsUrl;
  /// Organization root ID or organizational unit (OU) IDs to which StackSets deploys.
  final pulumi.Input<List<String>>? organizationalUnitIds;

  /// Creates a new [StackSetInstanceDeploymentTargets].
  /// [accountFilterType] Limit deployment targets to individual accounts or include additional accounts with provided OUs. Valid values: `INTERSECTION`, `DIFFERENCE`, `UNION`, `NONE`.
  /// [accounts] List of accounts to deploy stack set updates.
  /// [accountsUrl] S3 URL of the file containing the list of accounts.
  /// [organizationalUnitIds] Organization root ID or organizational unit (OU) IDs to which StackSets deploys.
  StackSetInstanceDeploymentTargets({
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

  factory StackSetInstanceDeploymentTargets.fromMap(Map<String, dynamic> map) {
    return StackSetInstanceDeploymentTargets(
      accountFilterType: (() { final guardedValue = map['accountFilterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      accountsUrl: (() { final guardedValue = map['accountsUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnitIds: (() { final guardedValue = map['organizationalUnitIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

