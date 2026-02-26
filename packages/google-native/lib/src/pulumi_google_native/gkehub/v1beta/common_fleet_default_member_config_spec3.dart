// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_membership_spec3.dart';
import 'identity_service_membership_spec3.dart';
import 'policy_controller_membership_spec3.dart';
import 'service_mesh_membership_spec3.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpec3 {
  /// Config Management-specific spec.
  final ConfigManagementMembershipSpec3? configmanagement;

  /// Identity Service-specific spec.
  final IdentityServiceMembershipSpec3? identityservice;

  /// Anthos Service Mesh-specific spec
  final ServiceMeshMembershipSpec3? mesh;

  /// Policy Controller spec.
  final PolicyControllerMembershipSpec3? policycontroller;

  CommonFleetDefaultMemberConfigSpec3({
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

  factory CommonFleetDefaultMemberConfigSpec3.fromMap(
      Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpec3(
      configmanagement: map['configmanagement'] == null
          ? null
          : ConfigManagementMembershipSpec3.fromMap(
              (map['configmanagement'] as Map).cast<String, dynamic>()),
      identityservice: map['identityservice'] == null
          ? null
          : IdentityServiceMembershipSpec3.fromMap(
              (map['identityservice'] as Map).cast<String, dynamic>()),
      mesh: map['mesh'] == null
          ? null
          : ServiceMeshMembershipSpec3.fromMap(
              (map['mesh'] as Map).cast<String, dynamic>()),
      policycontroller: map['policycontroller'] == null
          ? null
          : PolicyControllerMembershipSpec3.fromMap(
              (map['policycontroller'] as Map).cast<String, dynamic>()),
    );
  }
}
