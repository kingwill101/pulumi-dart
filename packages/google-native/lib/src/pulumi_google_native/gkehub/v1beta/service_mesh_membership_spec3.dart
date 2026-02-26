// ignore_for_file: unused_element, unnecessary_cast

import 'service_mesh_membership_spec_control_plane3.dart';
import 'service_mesh_membership_spec_management3.dart';

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpec3 {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final ServiceMeshMembershipSpecControlPlane3? controlPlane;

  /// Enables automatic Service Mesh management.
  final ServiceMeshMembershipSpecManagement3? management;

  ServiceMeshMembershipSpec3({
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

  factory ServiceMeshMembershipSpec3.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMembershipSpec3(
      controlPlane: map['controlPlane'] == null
          ? null
          : ServiceMeshMembershipSpecControlPlane3.fromValue(
              map['controlPlane'] as String),
      management: map['management'] == null
          ? null
          : ServiceMeshMembershipSpecManagement3.fromValue(
              map['management'] as String),
    );
  }
}
