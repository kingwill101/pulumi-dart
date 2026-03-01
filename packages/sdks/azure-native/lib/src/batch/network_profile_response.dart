// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_access_profile_response.dart';

/// Network profile for Batch account, which contains network rule settings for each endpoint.
class NetworkProfileResponse {
  /// Network access profile for batchAccount endpoint (Batch account data plane API).
  final EndpointAccessProfileResponse? accountAccess;
  /// Network access profile for nodeManagement endpoint (Batch service managing compute nodes for Batch pools).
  final EndpointAccessProfileResponse? nodeManagementAccess;

  /// Creates a new [NetworkProfileResponse].
  /// [accountAccess] Network access profile for batchAccount endpoint (Batch account data plane API).
  /// [nodeManagementAccess] Network access profile for nodeManagement endpoint (Batch service managing compute nodes for Batch pools).
  NetworkProfileResponse({
    this.accountAccess,
    this.nodeManagementAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAccess': ?accountAccess == null ? null : accountAccess!.toMap(),
      'nodeManagementAccess': ?nodeManagementAccess == null ? null : nodeManagementAccess!.toMap(),
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      accountAccess: map['accountAccess'] == null ? null : EndpointAccessProfileResponse.fromMap((map['accountAccess'] as Map).cast<String, dynamic>()),
      nodeManagementAccess: map['nodeManagementAccess'] == null ? null : EndpointAccessProfileResponse.fromMap((map['nodeManagementAccess'] as Map).cast<String, dynamic>()),
    );
  }
}

