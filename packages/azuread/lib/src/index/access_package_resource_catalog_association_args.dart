// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_package_resource_catalog_association_access_package_resource_catalog_association_args_doc}
/// The set of arguments for AccessPackageResourceCatalogAssociation.
/// {@endtemplate}
/// {@macro pulumi_index_access_package_resource_catalog_association_access_package_resource_catalog_association_args_doc}
class AccessPackageResourceCatalogAssociationArgs {
  /// The unique ID of the access package catalog. Changing this forces a new resource to be created.
  final pulumi.Input<String> catalogId;
  /// The unique identifier of the resource in the origin system. In the case of an Azure AD group, this is the identifier of the group. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceOriginId;
  /// The type of the resource in the origin system, such as `SharePointOnline`, `AadApplication` or `AadGroup`. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceOriginSystem;

  /// Creates a new [AccessPackageResourceCatalogAssociationArgs].
  /// [catalogId] The unique ID of the access package catalog. Changing this forces a new resource to be created.
  /// [resourceOriginId] The unique identifier of the resource in the origin system. In the case of an Azure AD group, this is the identifier of the group. Changing this forces a new resource to be created.
  /// [resourceOriginSystem] The type of the resource in the origin system, such as `SharePointOnline`, `AadApplication` or `AadGroup`. Changing this forces a new resource to be created.
  AccessPackageResourceCatalogAssociationArgs({
    required String catalogId,
    required String resourceOriginId,
    required String resourceOriginSystem,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      resourceOriginId = pulumi.Input.asInput<String>(resourceOriginId),
      resourceOriginSystem = pulumi.Input.asInput<String>(resourceOriginSystem);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'resourceOriginId': resourceOriginId,
      'resourceOriginSystem': resourceOriginSystem,
    };
  }

  factory AccessPackageResourceCatalogAssociationArgs.fromMap(Map<String, dynamic> map) {
    return AccessPackageResourceCatalogAssociationArgs(
      catalogId: map['catalogId'] as String,
      resourceOriginId: map['resourceOriginId'] as String,
      resourceOriginSystem: map['resourceOriginSystem'] as String,
    );
  }
}

