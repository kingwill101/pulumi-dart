// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_membership_spec_response_gkehub_v1beta.dart';
import 'identity_service_membership_spec_response_gkehub_v1beta.dart';
import 'policy_controller_membership_spec_response_gkehub_v1beta.dart';
import 'service_mesh_membership_spec_response_gkehub_v1beta.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta {
  /// Config Management-specific spec.
  final ConfigManagementMembershipSpecResponseGkehubV1beta configmanagement;
  /// Identity Service-specific spec.
  final IdentityServiceMembershipSpecResponseGkehubV1beta identityservice;
  /// Anthos Service Mesh-specific spec
  final ServiceMeshMembershipSpecResponseGkehubV1beta mesh;
  /// Policy Controller spec.
  final PolicyControllerMembershipSpecResponseGkehubV1beta policycontroller;

  /// Creates a new [CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta].
  /// [configmanagement] Config Management-specific spec.
  /// [identityservice] Identity Service-specific spec.
  /// [mesh] Anthos Service Mesh-specific spec
  /// [policycontroller] Policy Controller spec.
  CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta({
    required this.configmanagement,
    required this.identityservice,
    required this.mesh,
    required this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement': configmanagement.toMap(),
      'identityservice': identityservice.toMap(),
      'mesh': mesh.toMap(),
      'policycontroller': policycontroller.toMap(),
    };
  }

  factory CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecResponseGkehubV1beta(
      configmanagement: ConfigManagementMembershipSpecResponseGkehubV1beta.fromMap((map['configmanagement'] as Map).cast<String, dynamic>()),
      identityservice: IdentityServiceMembershipSpecResponseGkehubV1beta.fromMap((map['identityservice'] as Map).cast<String, dynamic>()),
      mesh: ServiceMeshMembershipSpecResponseGkehubV1beta.fromMap((map['mesh'] as Map).cast<String, dynamic>()),
      policycontroller: PolicyControllerMembershipSpecResponseGkehubV1beta.fromMap((map['policycontroller'] as Map).cast<String, dynamic>()),
    );
  }
}

