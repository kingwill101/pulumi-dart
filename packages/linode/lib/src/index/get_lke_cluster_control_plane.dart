// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lke_cluster_control_plane_acl.dart';

class GetLkeClusterControlPlane {
  /// The ACL configuration for an LKE cluster's control plane.
  final List<GetLkeClusterControlPlaneAcl> acls;
  /// Enables audit logs on the cluster's control plane.
  final bool auditLogsEnabled;
  /// Whether High Availability is enabled for the cluster Control Plane.
  final bool highAvailability;

  /// Creates a new [GetLkeClusterControlPlane].
  /// [acls] The ACL configuration for an LKE cluster's control plane.
  /// [auditLogsEnabled] Enables audit logs on the cluster's control plane.
  /// [highAvailability] Whether High Availability is enabled for the cluster Control Plane.
  GetLkeClusterControlPlane({
    required this.acls,
    required this.auditLogsEnabled,
    required this.highAvailability,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': pulumi.Input.encodeList<GetLkeClusterControlPlaneAcl, Map<String, dynamic>>(acls, (value) => value.toMap()),
      'auditLogsEnabled': auditLogsEnabled,
      'highAvailability': highAvailability,
    };
  }

  factory GetLkeClusterControlPlane.fromMap(Map<String, dynamic> map) {
    return GetLkeClusterControlPlane(
      acls: pulumi.Input.decodeList<GetLkeClusterControlPlaneAcl>(map['acls'], (value) => GetLkeClusterControlPlaneAcl.fromMap((value as Map).cast<String, dynamic>())),
      auditLogsEnabled: map['auditLogsEnabled'] as bool,
      highAvailability: map['highAvailability'] as bool,
    );
  }
}

