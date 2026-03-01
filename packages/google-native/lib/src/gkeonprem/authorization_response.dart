// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_user_response.dart';

/// Authorization defines the On-Prem cluster authorization configuration to bootstrap onto the admin cluster.
class AuthorizationResponse {
  /// For VMware and bare metal user clusters, users will be granted the cluster-admin role on the cluster, which provides full administrative access to the cluster. For bare metal admin clusters, users will be granted the cluster-view role, which limits users to read-only access.
  final List<ClusterUserResponse> adminUsers;

  /// Creates a new [AuthorizationResponse].
  /// [adminUsers] For VMware and bare metal user clusters, users will be granted the cluster-admin role on the cluster, which provides full administrative access to the cluster. For bare metal admin clusters, users will be granted the cluster-view role, which limits users to read-only access.
  AuthorizationResponse({required this.adminUsers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsers':
          pulumi.Input.encodeList<ClusterUserResponse, Map<String, dynamic>>(
            adminUsers,
            (value) => value.toMap(),
          ),
    };
  }

  factory AuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationResponse(
      adminUsers: pulumi.Input.decodeList<ClusterUserResponse>(
        map['adminUsers'],
        (value) =>
            ClusterUserResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
