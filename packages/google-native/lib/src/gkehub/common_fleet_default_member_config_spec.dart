// ignore_for_file: unused_element, unnecessary_cast

import 'config_management_membership_spec.dart';
import 'identity_service_membership_spec.dart';
import 'policy_controller_membership_spec.dart';
import 'service_mesh_membership_spec.dart';

/// CommonFleetDefaultMemberConfigSpec contains default configuration information for memberships of a fleet
class CommonFleetDefaultMemberConfigSpec {
  /// Config Management-specific spec.
  final ConfigManagementMembershipSpec? configmanagement;

  /// Identity Service-specific spec.
  final IdentityServiceMembershipSpec? identityservice;

  /// Anthos Service Mesh-specific spec
  final ServiceMeshMembershipSpec? mesh;

  /// Policy Controller spec.
  final PolicyControllerMembershipSpec? policycontroller;

  /// Creates a new [CommonFleetDefaultMemberConfigSpec].
  /// [configmanagement] Config Management-specific spec.
  /// [identityservice] Identity Service-specific spec.
  /// [mesh] Anthos Service Mesh-specific spec
  /// [policycontroller] Policy Controller spec.
  CommonFleetDefaultMemberConfigSpec({
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

  factory CommonFleetDefaultMemberConfigSpec.fromMap(Map<String, dynamic> map) {
    return CommonFleetDefaultMemberConfigSpec(
      configmanagement: map['configmanagement'] == null
          ? null
          : ConfigManagementMembershipSpec.fromMap(
              (map['configmanagement'] as Map).cast<String, dynamic>(),
            ),
      identityservice: map['identityservice'] == null
          ? null
          : IdentityServiceMembershipSpec.fromMap(
              (map['identityservice'] as Map).cast<String, dynamic>(),
            ),
      mesh: map['mesh'] == null
          ? null
          : ServiceMeshMembershipSpec.fromMap(
              (map['mesh'] as Map).cast<String, dynamic>(),
            ),
      policycontroller: map['policycontroller'] == null
          ? null
          : PolicyControllerMembershipSpec.fromMap(
              (map['policycontroller'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
