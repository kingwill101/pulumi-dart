// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_membership_spec_response3.dart';
import 'identity_service_membership_spec_response3.dart';
import 'policy_controller_membership_spec_response3.dart';
import 'service_mesh_membership_spec_response3.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecResponse3 {
  /// Config Management-specific spec.
  final ConfigManagementMembershipSpecResponse3 configmanagement;

  /// Identity Service-specific spec.
  final IdentityServiceMembershipSpecResponse3 identityservice;

  /// Anthos Service Mesh-specific spec
  final ServiceMeshMembershipSpecResponse3 mesh;

  /// Policy Controller spec.
  final PolicyControllerMembershipSpecResponse3 policycontroller;

  CommonFleetDefaultMemberConfigSpecResponse3({
    required this.configmanagement,
    required this.identityservice,
    required this.mesh,
    required this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configmanagement'] = configmanagement.toMap();
    map['identityservice'] = identityservice.toMap();
    map['mesh'] = mesh.toMap();
    map['policycontroller'] = policycontroller.toMap();
    return map;
  }

  factory CommonFleetDefaultMemberConfigSpecResponse3.fromMap(
      Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecResponse3(
      configmanagement: ConfigManagementMembershipSpecResponse3.fromMap(
          (map['configmanagement'] as Map).cast<String, dynamic>()),
      identityservice: IdentityServiceMembershipSpecResponse3.fromMap(
          (map['identityservice'] as Map).cast<String, dynamic>()),
      mesh: ServiceMeshMembershipSpecResponse3.fromMap(
          (map['mesh'] as Map).cast<String, dynamic>()),
      policycontroller: PolicyControllerMembershipSpecResponse3.fromMap(
          (map['policycontroller'] as Map).cast<String, dynamic>()),
    );
  }
}
