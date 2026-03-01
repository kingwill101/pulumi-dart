// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'mds_resource_properties.dart';
import 'sku.dart';

/// {@template pulumi_manufacturingplatform_manufacturing_data_service_args_doc}
/// The set of arguments for ManufacturingDataService.
/// {@endtemplate}
/// {@macro pulumi_manufacturingplatform_manufacturing_data_service_args_doc}
class ManufacturingDataServiceArgs {
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name.
  final pulumi.Input<String>? mdsResourceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<MdsResourceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManufacturingDataServiceArgs].
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [mdsResourceName] Name.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU (Stock Keeping Unit) assigned to this resource.
  /// [tags] Resource tags.
  ManufacturingDataServiceArgs({
    ManagedServiceIdentity? identity,
    String? location,
    String? mdsResourceName,
    MdsResourceProperties? properties,
    required String resourceGroupName,
    Sku? sku,
    Map<String, String>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      mdsResourceName = pulumi.Input.asOptionalInput<String>(mdsResourceName),
      properties = pulumi.Input.asOptionalInput<MdsResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'mdsResourceName': ?mdsResourceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MdsResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ManufacturingDataServiceArgs.fromMap(Map<String, dynamic> map) {
    return ManufacturingDataServiceArgs(
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      mdsResourceName: map['mdsResourceName'] == null ? null : map['mdsResourceName'] as String,
      properties: map['properties'] == null ? null : MdsResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

