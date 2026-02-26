// ignore_for_file: unused_element, unnecessary_cast

import 'service_mesh_membership_spec_control_plane2.dart';
import 'service_mesh_membership_spec_default_channel.dart';
import 'service_mesh_membership_spec_management2.dart';

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpec2 {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final ServiceMeshMembershipSpecControlPlane2? controlPlane;

  /// Determines which release channel to use for default injection and service mesh APIs.
  final ServiceMeshMembershipSpecDefaultChannel? defaultChannel;

  /// Enables automatic Service Mesh management.
  final ServiceMeshMembershipSpecManagement2? management;

  ServiceMeshMembershipSpec2({
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

  factory ServiceMeshMembershipSpec2.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMembershipSpec2(
      controlPlane: map['controlPlane'] == null
          ? null
          : ServiceMeshMembershipSpecControlPlane2.fromValue(
              map['controlPlane'] as String),
      defaultChannel: map['defaultChannel'] == null
          ? null
          : ServiceMeshMembershipSpecDefaultChannel.fromValue(
              map['defaultChannel'] as String),
      management: map['management'] == null
          ? null
          : ServiceMeshMembershipSpecManagement2.fromValue(
              map['management'] as String),
    );
  }
}
