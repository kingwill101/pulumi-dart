// ignore_for_file: unused_element, unnecessary_cast

import 'account_network_profile_account_access.dart';
import 'account_network_profile_node_management_access.dart';

class AccountNetworkProfile {
  /// An `account_access` block as defined below.
  final AccountNetworkProfileAccountAccess? accountAccess;
  /// A `node_management_access` block as defined below.
  ///
  /// > **NOTE:** At least one of `account_access` or `node_management_access` must be specified.
  final AccountNetworkProfileNodeManagementAccess? nodeManagementAccess;

  /// Creates a new [AccountNetworkProfile].
  /// [accountAccess] An `account_access` block as defined below.
  /// [nodeManagementAccess] A `node_management_access` block as defined below.
  AccountNetworkProfile({
    this.accountAccess,
    this.nodeManagementAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAccess': ?accountAccess == null ? null : accountAccess!.toMap(),
      'nodeManagementAccess': ?nodeManagementAccess == null ? null : nodeManagementAccess!.toMap(),
    };
  }

  factory AccountNetworkProfile.fromMap(Map<String, dynamic> map) {
    return AccountNetworkProfile(
      accountAccess: map['accountAccess'] == null ? null : AccountNetworkProfileAccountAccess.fromMap((map['accountAccess'] as Map).cast<String, dynamic>()),
      nodeManagementAccess: map['nodeManagementAccess'] == null ? null : AccountNetworkProfileNodeManagementAccess.fromMap((map['nodeManagementAccess'] as Map).cast<String, dynamic>()),
    );
  }
}

