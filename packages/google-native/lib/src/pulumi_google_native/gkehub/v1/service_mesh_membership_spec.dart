// ignore_for_file: unused_element, unnecessary_cast

import 'service_mesh_membership_spec_control_plane.dart';
import 'service_mesh_membership_spec_management.dart';

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpec {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final ServiceMeshMembershipSpecControlPlane? controlPlane;

  /// Enables automatic Service Mesh management.
  final ServiceMeshMembershipSpecManagement? management;

  ServiceMeshMembershipSpec({
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

  factory ServiceMeshMembershipSpec.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMembershipSpec(
      controlPlane: map['controlPlane'] == null
          ? null
          : ServiceMeshMembershipSpecControlPlane.fromValue(
              map['controlPlane'] as String),
      management: map['management'] == null
          ? null
          : ServiceMeshMembershipSpecManagement.fromValue(
              map['management'] as String),
    );
  }
}
