// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_membership_spec_gkehub_v1beta.dart';
import 'identity_service_membership_spec_gkehub_v1beta.dart';
import 'policy_controller_membership_spec_gkehub_v1beta.dart';
import 'service_mesh_membership_spec_gkehub_v1beta.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecGkehubV1beta {
  /// Config Management-specific spec.
  final ConfigManagementMembershipSpecGkehubV1beta? configmanagement;

  /// Identity Service-specific spec.
  final IdentityServiceMembershipSpecGkehubV1beta? identityservice;

  /// Anthos Service Mesh-specific spec
  final ServiceMeshMembershipSpecGkehubV1beta? mesh;

  /// Policy Controller spec.
  final PolicyControllerMembershipSpecGkehubV1beta? policycontroller;

  CommonFleetDefaultMemberConfigSpecGkehubV1beta({
    this.configmanagement,
    this.identityservice,
    this.mesh,
    this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configmanagementValue = configmanagement;
    if (configmanagementValue != null) {
      map['configmanagement'] = configmanagementValue.toMap();
    }
    final identityserviceValue = identityservice;
    if (identityserviceValue != null) {
      map['identityservice'] = identityserviceValue.toMap();
    }
    final meshValue = mesh;
    if (meshValue != null) {
      map['mesh'] = meshValue.toMap();
    }
    final policycontrollerValue = policycontroller;
    if (policycontrollerValue != null) {
      map['policycontroller'] = policycontrollerValue.toMap();
    }
    return map;
  }

  factory CommonFleetDefaultMemberConfigSpecGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecGkehubV1beta(
      configmanagement: map['configmanagement'] == null
          ? null
          : ConfigManagementMembershipSpecGkehubV1beta.fromMap(
              (map['configmanagement'] as Map).cast<String, dynamic>()),
      identityservice: map['identityservice'] == null
          ? null
          : IdentityServiceMembershipSpecGkehubV1beta.fromMap(
              (map['identityservice'] as Map).cast<String, dynamic>()),
      mesh: map['mesh'] == null
          ? null
          : ServiceMeshMembershipSpecGkehubV1beta.fromMap(
              (map['mesh'] as Map).cast<String, dynamic>()),
      policycontroller: map['policycontroller'] == null
          ? null
          : PolicyControllerMembershipSpecGkehubV1beta.fromMap(
              (map['policycontroller'] as Map).cast<String, dynamic>()),
    );
  }
}
