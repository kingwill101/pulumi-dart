// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_membership_spec_gkehub_v1alpha.dart';
import 'identity_service_membership_spec_gkehub_v1alpha.dart';
import 'policy_controller_membership_spec_gkehub_v1alpha.dart';
import 'service_mesh_membership_spec_gkehub_v1alpha.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpecGkehubV1alpha {
  /// Config Management-specific spec.
  final ConfigManagementMembershipSpecGkehubV1alpha? configmanagement;

  /// Identity Service-specific spec.
  final IdentityServiceMembershipSpecGkehubV1alpha? identityservice;

  /// Anthos Service Mesh-specific spec
  final ServiceMeshMembershipSpecGkehubV1alpha? mesh;

  /// Policy Controller spec.
  final PolicyControllerMembershipSpecGkehubV1alpha? policycontroller;

  /// Creates a new [CommonFleetDefaultMemberConfigSpecGkehubV1alpha].
  /// [configmanagement] Config Management-specific spec.
  /// [identityservice] Identity Service-specific spec.
  /// [mesh] Anthos Service Mesh-specific spec
  /// [policycontroller] Policy Controller spec.
  CommonFleetDefaultMemberConfigSpecGkehubV1alpha({
    this.configmanagement,
    this.identityservice,
    this.mesh,
    this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement': ?configmanagement == null
          ? null
          : configmanagement!.toMap(),
      'identityservice': ?identityservice == null
          ? null
          : identityservice!.toMap(),
      'mesh': ?mesh == null ? null : mesh!.toMap(),
      'policycontroller': ?policycontroller == null
          ? null
          : policycontroller!.toMap(),
    };
  }

  factory CommonFleetDefaultMemberConfigSpecGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return CommonFleetDefaultMemberConfigSpecGkehubV1alpha(
      configmanagement: map['configmanagement'] == null
          ? null
          : ConfigManagementMembershipSpecGkehubV1alpha.fromMap(
              (map['configmanagement'] as Map).cast<String, dynamic>(),
            ),
      identityservice: map['identityservice'] == null
          ? null
          : IdentityServiceMembershipSpecGkehubV1alpha.fromMap(
              (map['identityservice'] as Map).cast<String, dynamic>(),
            ),
      mesh: map['mesh'] == null
          ? null
          : ServiceMeshMembershipSpecGkehubV1alpha.fromMap(
              (map['mesh'] as Map).cast<String, dynamic>(),
            ),
      policycontroller: map['policycontroller'] == null
          ? null
          : PolicyControllerMembershipSpecGkehubV1alpha.fromMap(
              (map['policycontroller'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
