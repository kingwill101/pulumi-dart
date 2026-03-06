// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_configuration_argo_cd_rbac_role_mapping_identity.dart';

class CapabilityConfigurationArgoCdRbacRoleMapping {
  /// List of identities. See `identity` below.
  final pulumi.Input<List<CapabilityConfigurationArgoCdRbacRoleMappingIdentity>> identities;
  /// ArgoCD role. Valid values: `ADMIN`, `EDITOR`, `VIEWER`.
  final pulumi.Input<String> role;

  /// Creates a new [CapabilityConfigurationArgoCdRbacRoleMapping].
  /// [identities] List of identities. See `identity` below.
  /// [role] ArgoCD role. Valid values: `ADMIN`, `EDITOR`, `VIEWER`.
  const CapabilityConfigurationArgoCdRbacRoleMapping({
    required this.identities,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': pulumi.Input.mapInputValue<List<CapabilityConfigurationArgoCdRbacRoleMappingIdentity>, List<Map<String, dynamic>>>(identities, (value) => pulumi.Input.encodeList<CapabilityConfigurationArgoCdRbacRoleMappingIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'role': role,
    };
  }

  factory CapabilityConfigurationArgoCdRbacRoleMapping.fromMap(Map<String, dynamic> map) {
    return CapabilityConfigurationArgoCdRbacRoleMapping(
      identities: pulumi.Input.fromValue(pulumi.Input.decodeList<CapabilityConfigurationArgoCdRbacRoleMappingIdentity>(map['identities']!, (value) => CapabilityConfigurationArgoCdRbacRoleMappingIdentity.fromMap((value as Map).cast<String, dynamic>()))),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

