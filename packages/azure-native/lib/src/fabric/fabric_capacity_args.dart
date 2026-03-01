// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_administration.dart';
import 'rp_sku.dart';

/// {@template pulumi_fabric_fabric_capacity_args_doc}
/// The set of arguments for FabricCapacity.
/// {@endtemplate}
/// {@macro pulumi_fabric_fabric_capacity_args_doc}
class FabricCapacityArgs {
  /// The capacity administration
  final pulumi.Input<CapacityAdministration> administration;
  /// The name of the Microsoft Fabric capacity. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String>? capacityName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU details
  final pulumi.Input<RpSku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FabricCapacityArgs].
  /// [administration] The capacity administration
  /// [capacityName] The name of the Microsoft Fabric capacity. It must be a minimum of 3 characters, and a maximum of 63.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU details
  /// [tags] Resource tags.
  FabricCapacityArgs({
    required CapacityAdministration administration,
    String? capacityName,
    String? location,
    required String resourceGroupName,
    required RpSku sku,
    Map<String, String>? tags,
  }) :
      administration = pulumi.Input.asInput<CapacityAdministration>(administration),
      capacityName = pulumi.Input.asOptionalInput<String>(capacityName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<RpSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administration': pulumi.Input.mapInputValue<CapacityAdministration, Map<String, dynamic>>(administration, (value) => value.toMap()),
      'capacityName': ?capacityName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<RpSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory FabricCapacityArgs.fromMap(Map<String, dynamic> map) {
    return FabricCapacityArgs(
      administration: CapacityAdministration.fromMap((map['administration'] as Map).cast<String, dynamic>()),
      capacityName: map['capacityName'] == null ? null : map['capacityName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: RpSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

