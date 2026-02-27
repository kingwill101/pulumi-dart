// ignore_for_file: unused_element, unnecessary_cast

import 'service_mesh_membership_spec_control_plane_gkehub_v1alpha.dart';
import 'service_mesh_membership_spec_default_channel.dart';
import 'service_mesh_membership_spec_management_gkehub_v1alpha.dart';

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpecGkehubV1alpha {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final ServiceMeshMembershipSpecControlPlaneGkehubV1alpha? controlPlane;

  /// Determines which release channel to use for default injection and service mesh APIs.
  final ServiceMeshMembershipSpecDefaultChannel? defaultChannel;

  /// Enables automatic Service Mesh management.
  final ServiceMeshMembershipSpecManagementGkehubV1alpha? management;

  ServiceMeshMembershipSpecGkehubV1alpha({
    this.controlPlane,
    this.defaultChannel,
    this.management,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final controlPlaneValue = controlPlane;
    if (controlPlaneValue != null) {
      map['controlPlane'] = controlPlaneValue.value;
    }
    final defaultChannelValue = defaultChannel;
    if (defaultChannelValue != null) {
      map['defaultChannel'] = defaultChannelValue.value;
    }
    final managementValue = management;
    if (managementValue != null) {
      map['management'] = managementValue.value;
    }
    return map;
  }

  factory ServiceMeshMembershipSpecGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return ServiceMeshMembershipSpecGkehubV1alpha(
      controlPlane: map['controlPlane'] == null
          ? null
          : ServiceMeshMembershipSpecControlPlaneGkehubV1alpha.fromValue(
              map['controlPlane'] as String),
      defaultChannel: map['defaultChannel'] == null
          ? null
          : ServiceMeshMembershipSpecDefaultChannel.fromValue(
              map['defaultChannel'] as String),
      management: map['management'] == null
          ? null
          : ServiceMeshMembershipSpecManagementGkehubV1alpha.fromValue(
              map['management'] as String),
    );
  }
}
