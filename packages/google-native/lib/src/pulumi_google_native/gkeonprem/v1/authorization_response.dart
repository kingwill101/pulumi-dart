// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_user_response.dart';

/// Authorization defines the On-Prem cluster authorization configuration to bootstrap onto the admin cluster.
class AuthorizationResponse {
  /// For VMware and bare metal user clusters, users will be granted the cluster-admin role on the cluster, which provides full administrative access to the cluster. For bare metal admin clusters, users will be granted the cluster-view role, which limits users to read-only access.
  final List<ClusterUserResponse> adminUsers;

  AuthorizationResponse({
    required this.adminUsers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminUsers'] =
        Input.encodeList<ClusterUserResponse, Map<String, dynamic>>(
            adminUsers, (value) => value.toMap());
    return map;
  }

  factory AuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationResponse(
      adminUsers: Input.decodeList<ClusterUserResponse>(
          map['adminUsers'],
          (value) => ClusterUserResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
