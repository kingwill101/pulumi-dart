// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_connectedvmwarevsphere_resource_pool_args_doc}
/// The set of arguments for ResourcePool.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_resource_pool_args_doc}
class ResourcePoolArgs {
  /// Gets or sets the extended location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Gets or sets the inventory Item ID for the resource pool.
  final pulumi.Input<String>? inventoryItemId;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// Gets or sets the location.
  final pulumi.Input<String>? location;
  /// Gets or sets the vCenter MoRef (Managed Object Reference) ID for the resource pool.
  final pulumi.Input<String>? moRefId;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the resourcePool.
  final pulumi.Input<String>? resourcePoolName;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  final pulumi.Input<String>? vCenterId;

  /// Creates a new [ResourcePoolArgs].
  /// [extendedLocation] Gets or sets the extended location.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the resource pool.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] Gets or sets the location.
  /// [moRefId] Gets or sets the vCenter MoRef (Managed Object Reference) ID for the resource pool.
  /// [resourceGroupName] The Resource Group Name.
  /// [resourcePoolName] Name of the resourcePool.
  /// [tags] Gets or sets the Resource tags.
  /// [vCenterId] Gets or sets the ARM Id of the vCenter resource in which this resource pool resides.
  ResourcePoolArgs({
    ExtendedLocation? extendedLocation,
    String? inventoryItemId,
    String? kind,
    String? location,
    String? moRefId,
    required String resourceGroupName,
    String? resourcePoolName,
    Map<String, String>? tags,
    String? vCenterId,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      inventoryItemId = pulumi.Input.asOptionalInput<String>(inventoryItemId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      moRefId = pulumi.Input.asOptionalInput<String>(moRefId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourcePoolName = pulumi.Input.asOptionalInput<String>(resourcePoolName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vCenterId = pulumi.Input.asOptionalInput<String>(vCenterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'inventoryItemId': ?inventoryItemId,
      'kind': ?kind,
      'location': ?location,
      'moRefId': ?moRefId,
      'resourceGroupName': resourceGroupName,
      'resourcePoolName': ?resourcePoolName,
      'tags': ?tags,
      'vCenterId': ?vCenterId,
    };
  }

  factory ResourcePoolArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePoolArgs(
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      inventoryItemId: map['inventoryItemId'] == null ? null : map['inventoryItemId'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      moRefId: map['moRefId'] == null ? null : map['moRefId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourcePoolName: map['resourcePoolName'] == null ? null : map['resourcePoolName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vCenterId: map['vCenterId'] == null ? null : map['vCenterId'] as String,
    );
  }
}

