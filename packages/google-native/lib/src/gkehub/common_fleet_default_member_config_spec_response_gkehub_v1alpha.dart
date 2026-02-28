// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_membership_spec_response_gkehub_v1alpha.dart';
import 'identity_service_membership_spec_response_gkehub_v1alpha.dart';
import 'policy_controller_membership_spec_response_gkehub_v1alpha.dart';
import 'service_mesh_membership_spec_response_gkehub_v1alpha.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecResponseGkehubV1alpha {
  /// Config Management-specific spec.
  final ConfigManagementMembershipSpecResponseGkehubV1alpha configmanagement;

  /// Identity Service-specific spec.
  final IdentityServiceMembershipSpecResponseGkehubV1alpha identityservice;

  /// Anthos Service Mesh-specific spec
  final ServiceMeshMembershipSpecResponseGkehubV1alpha mesh;

  /// Policy Controller spec.
  final PolicyControllerMembershipSpecResponseGkehubV1alpha policycontroller;

  /// Creates a new [CommonFleetDefaultMemberConfigSpecResponseGkehubV1alpha].
  /// [configmanagement] Config Management-specific spec.
  /// [identityservice] Identity Service-specific spec.
  /// [mesh] Anthos Service Mesh-specific spec
  /// [policycontroller] Policy Controller spec.
  CommonFleetDefaultMemberConfigSpecResponseGkehubV1alpha({
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

  factory CommonFleetDefaultMemberConfigSpecResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpecResponseGkehubV1alpha(
      configmanagement:
          ConfigManagementMembershipSpecResponseGkehubV1alpha.fromMap(
              (map['configmanagement'] as Map).cast<String, dynamic>()),
      identityservice:
          IdentityServiceMembershipSpecResponseGkehubV1alpha.fromMap(
              (map['identityservice'] as Map).cast<String, dynamic>()),
      mesh: ServiceMeshMembershipSpecResponseGkehubV1alpha.fromMap(
          (map['mesh'] as Map).cast<String, dynamic>()),
      policycontroller:
          PolicyControllerMembershipSpecResponseGkehubV1alpha.fromMap(
              (map['policycontroller'] as Map).cast<String, dynamic>()),
    );
  }
}
