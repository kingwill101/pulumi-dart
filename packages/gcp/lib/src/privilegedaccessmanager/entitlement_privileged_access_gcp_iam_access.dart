// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_privileged_access_gcp_iam_access_role_binding.dart';

class EntitlementPrivilegedAccessGcpIamAccess {
  /// Name of the resource.
  final String resource;
  /// The type of this resource.
  final String resourceType;
  /// Role bindings to be created on successful grant.
  /// Structure is documented below.
  final List<EntitlementPrivilegedAccessGcpIamAccessRoleBinding> roleBindings;

  /// Creates a new [EntitlementPrivilegedAccessGcpIamAccess].
  /// [resource] Name of the resource.
  /// [resourceType] The type of this resource.
  /// [roleBindings] Role bindings to be created on successful grant.
  EntitlementPrivilegedAccessGcpIamAccess({
    required this.resource,
    required this.resourceType,
    required this.roleBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': resource,
      'resourceType': resourceType,
      'roleBindings': pulumi.Input.encodeList<EntitlementPrivilegedAccessGcpIamAccessRoleBinding, Map<String, dynamic>>(roleBindings, (value) => value.toMap()),
    };
  }

  factory EntitlementPrivilegedAccessGcpIamAccess.fromMap(Map<String, dynamic> map) {
    return EntitlementPrivilegedAccessGcpIamAccess(
      resource: map['resource'] as String,
      resourceType: map['resourceType'] as String,
      roleBindings: pulumi.Input.decodeList<EntitlementPrivilegedAccessGcpIamAccessRoleBinding>(map['roleBindings'], (value) => EntitlementPrivilegedAccessGcpIamAccessRoleBinding.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

