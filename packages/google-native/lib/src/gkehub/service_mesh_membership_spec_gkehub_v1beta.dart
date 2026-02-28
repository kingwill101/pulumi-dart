// ignore_for_file: unused_element, unnecessary_cast

import 'service_mesh_membership_spec_control_plane_gkehub_v1beta.dart';
import 'service_mesh_membership_spec_management_gkehub_v1beta.dart';

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpecGkehubV1beta {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final ServiceMeshMembershipSpecControlPlaneGkehubV1beta? controlPlane;

  /// Enables automatic Service Mesh management.
  final ServiceMeshMembershipSpecManagementGkehubV1beta? management;

  /// Creates a new [ServiceMeshMembershipSpecGkehubV1beta].
  /// [controlPlane] Deprecated: use `management` instead Enables automatic control plane management.
  /// [management] Enables automatic Service Mesh management.
  ServiceMeshMembershipSpecGkehubV1beta({
    this.controlPlane,
    this.management,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final controlPlaneValue = controlPlane;
    if (controlPlaneValue != null) {
      map['controlPlane'] = controlPlaneValue.value;
    }
    final managementValue = management;
    if (managementValue != null) {
      map['management'] = managementValue.value;
    }
    return map;
  }

  factory ServiceMeshMembershipSpecGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ServiceMeshMembershipSpecGkehubV1beta(
      controlPlane: map['controlPlane'] == null
          ? null
          : ServiceMeshMembershipSpecControlPlaneGkehubV1beta.fromValue(
              map['controlPlane'] as String),
      management: map['management'] == null
          ? null
          : ServiceMeshMembershipSpecManagementGkehubV1beta.fromValue(
              map['management'] as String),
    );
  }
}
