// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_membership_spec_response2.dart';
import 'identity_service_membership_spec_response2.dart';
import 'policy_controller_membership_spec_response2.dart';
import 'service_mesh_membership_spec_response2.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecResponse2 {
  /// Config Management-specific spec.
  final ConfigManagementMembershipSpecResponse2 configmanagement;

  /// Identity Service-specific spec.
  final IdentityServiceMembershipSpecResponse2 identityservice;

  /// Anthos Service Mesh-specific spec
  final ServiceMeshMembershipSpecResponse2 mesh;

  /// Policy Controller spec.
  final PolicyControllerMembershipSpecResponse2 policycontroller;

  CommonFleetDefaultMemberConfigSpecResponse2({
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

  factory CommonFleetDefaultMemberConfigSpecResponse2.fromMap(
      Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecResponse2(
      configmanagement: ConfigManagementMembershipSpecResponse2.fromMap(
          (map['configmanagement'] as Map).cast<String, dynamic>()),
      identityservice: IdentityServiceMembershipSpecResponse2.fromMap(
          (map['identityservice'] as Map).cast<String, dynamic>()),
      mesh: ServiceMeshMembershipSpecResponse2.fromMap(
          (map['mesh'] as Map).cast<String, dynamic>()),
      policycontroller: PolicyControllerMembershipSpecResponse2.fromMap(
          (map['policycontroller'] as Map).cast<String, dynamic>()),
    );
  }
}
