// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_access_profile.dart';

/// Network profile for Batch account, which contains network rule settings for each endpoint.
class NetworkProfile {
  /// Network access profile for batchAccount endpoint (Batch account data plane API).
  final EndpointAccessProfile? accountAccess;
  /// Network access profile for nodeManagement endpoint (Batch service managing compute nodes for Batch pools).
  final EndpointAccessProfile? nodeManagementAccess;

  /// Creates a new [NetworkProfile].
  /// [accountAccess] Network access profile for batchAccount endpoint (Batch account data plane API).
  /// [nodeManagementAccess] Network access profile for nodeManagement endpoint (Batch service managing compute nodes for Batch pools).
  NetworkProfile({
    this.accountAccess,
    this.nodeManagementAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAccess': ?accountAccess == null ? null : accountAccess!.toMap(),
      'nodeManagementAccess': ?nodeManagementAccess == null ? null : nodeManagementAccess!.toMap(),
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      accountAccess: map['accountAccess'] == null ? null : EndpointAccessProfile.fromMap((map['accountAccess'] as Map).cast<String, dynamic>()),
      nodeManagementAccess: map['nodeManagementAccess'] == null ? null : EndpointAccessProfile.fromMap((map['nodeManagementAccess'] as Map).cast<String, dynamic>()),
    );
  }
}

