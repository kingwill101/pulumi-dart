// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_entitlement_privileged_access_gcp_iam_access_role_binding/get_entitlement_privileged_access_gcp_iam_access_role_binding.dart';

class GetEntitlementPrivilegedAccessGcpIamAccess {
  /// Name of the resource.
  final String resource;

  /// The type of this resource.
  final String resourceType;

  /// Role bindings to be created on successful grant.
  final List<GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding>
      roleBindings;

  GetEntitlementPrivilegedAccessGcpIamAccess({
    required this.resource,
    required this.resourceType,
    required this.roleBindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resource'] = resource;
    map['resourceType'] = resourceType;
    map['roleBindings'] = Input.encodeList<
        GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding,
        Map<String, dynamic>>(roleBindings, (value) => value.toMap());
    return map;
  }

  factory GetEntitlementPrivilegedAccessGcpIamAccess.fromMap(
      Map<String, dynamic> map) {
    return GetEntitlementPrivilegedAccessGcpIamAccess(
      resource: map['resource'] as String,
      resourceType: map['resourceType'] as String,
      roleBindings: Input.decodeList<
              GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding>(
          map['roleBindings'],
          (value) =>
              GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
