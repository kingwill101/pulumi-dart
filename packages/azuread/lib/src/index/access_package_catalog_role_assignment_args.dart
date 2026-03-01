// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_package_catalog_role_assignment_access_package_catalog_role_assignment_args_doc}
/// The set of arguments for AccessPackageCatalogRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_index_access_package_catalog_role_assignment_access_package_catalog_role_assignment_args_doc}
class AccessPackageCatalogRoleAssignmentArgs {
  /// The ID of the Catalog this role assignment will be scoped to. Changing this forces a new resource to be created.
  final pulumi.Input<String> catalogId;
  /// The object ID of the principal for you want to create a role assignment. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalObjectId;
  /// The object ID of the catalog role you want to assign. Changing this forces a new resource to be created.
  final pulumi.Input<String> roleId;

  /// Creates a new [AccessPackageCatalogRoleAssignmentArgs].
  /// [catalogId] The ID of the Catalog this role assignment will be scoped to. Changing this forces a new resource to be created.
  /// [principalObjectId] The object ID of the principal for you want to create a role assignment. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  /// [roleId] The object ID of the catalog role you want to assign. Changing this forces a new resource to be created.
  AccessPackageCatalogRoleAssignmentArgs({
    required String catalogId,
    required String principalObjectId,
    required String roleId,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      principalObjectId = pulumi.Input.asInput<String>(principalObjectId),
      roleId = pulumi.Input.asInput<String>(roleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'principalObjectId': principalObjectId,
      'roleId': roleId,
    };
  }

  factory AccessPackageCatalogRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AccessPackageCatalogRoleAssignmentArgs(
      catalogId: map['catalogId'] as String,
      principalObjectId: map['principalObjectId'] as String,
      roleId: map['roleId'] as String,
    );
  }
}

