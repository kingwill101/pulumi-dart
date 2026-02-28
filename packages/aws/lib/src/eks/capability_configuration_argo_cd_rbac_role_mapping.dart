// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_configuration_argo_cd_rbac_role_mapping_identity.dart';

class CapabilityConfigurationArgoCdRbacRoleMapping {
  /// List of identities. See `identity` below.
  final List<CapabilityConfigurationArgoCdRbacRoleMappingIdentity> identities;
  /// ArgoCD role. Valid values: `ADMIN`, `EDITOR`, `VIEWER`.
  final String role;

  /// Creates a new [CapabilityConfigurationArgoCdRbacRoleMapping].
  /// [identities] List of identities. See `identity` below.
  /// [role] ArgoCD role. Valid values: `ADMIN`, `EDITOR`, `VIEWER`.
  CapabilityConfigurationArgoCdRbacRoleMapping({
    required this.identities,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': pulumi.Input.encodeList<CapabilityConfigurationArgoCdRbacRoleMappingIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'role': role,
    };
  }

  factory CapabilityConfigurationArgoCdRbacRoleMapping.fromMap(Map<String, dynamic> map) {
    return CapabilityConfigurationArgoCdRbacRoleMapping(
      identities: pulumi.Input.decodeList<CapabilityConfigurationArgoCdRbacRoleMappingIdentity>(map['identities'], (value) => CapabilityConfigurationArgoCdRbacRoleMappingIdentity.fromMap((value as Map).cast<String, dynamic>())),
      role: map['role'] as String,
    );
  }
}

