// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk.dart';
import 'sku.dart';

/// {@template pulumi_storagepool_disk_pool_args_doc}
/// The set of arguments for DiskPool.
/// {@endtemplate}
/// {@macro pulumi_storagepool_disk_pool_args_doc}
class DiskPoolArgs {
  /// List of additional capabilities for a Disk Pool.
  final pulumi.Input<List<String>>? additionalCapabilities;
  /// Logical zone for Disk Pool resource; example: ["1"].
  final pulumi.Input<List<String>>? availabilityZones;
  /// The name of the Disk Pool.
  final pulumi.Input<String>? diskPoolName;
  /// List of Azure Managed Disks to attach to a Disk Pool.
  final pulumi.Input<List<Disk>>? disks;
  /// The geo-location where the resource lives.
  final pulumi.Input<String>? location;
  /// Azure resource id. Indicates if this resource is managed by another Azure resource.
  final pulumi.Input<String>? managedBy;
  /// List of Azure resource ids that manage this resource.
  final pulumi.Input<List<String>>? managedByExtended;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Determines the SKU of the Disk Pool
  final pulumi.Input<Sku> sku;
  /// Azure Resource ID of a Subnet for the Disk Pool.
  final pulumi.Input<String> subnetId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiskPoolArgs].
  /// [additionalCapabilities] List of additional capabilities for a Disk Pool.
  /// [availabilityZones] Logical zone for Disk Pool resource; example: ["1"].
  /// [diskPoolName] The name of the Disk Pool.
  /// [disks] List of Azure Managed Disks to attach to a Disk Pool.
  /// [location] The geo-location where the resource lives.
  /// [managedBy] Azure resource id. Indicates if this resource is managed by another Azure resource.
  /// [managedByExtended] List of Azure resource ids that manage this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Determines the SKU of the Disk Pool
  /// [subnetId] Azure Resource ID of a Subnet for the Disk Pool.
  /// [tags] Resource tags.
  DiskPoolArgs({
    List<String>? additionalCapabilities,
    List<String>? availabilityZones,
    String? diskPoolName,
    List<Disk>? disks,
    String? location,
    String? managedBy,
    List<String>? managedByExtended,
    required String resourceGroupName,
    required Sku sku,
    required String subnetId,
    Map<String, String>? tags,
  }) :
      additionalCapabilities = pulumi.Input.asOptionalInput<List<String>>(additionalCapabilities),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      diskPoolName = pulumi.Input.asOptionalInput<String>(diskPoolName),
      disks = pulumi.Input.asOptionalInput<List<Disk>>(disks),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      managedByExtended = pulumi.Input.asOptionalInput<List<String>>(managedByExtended),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<Sku>(sku),
      subnetId = pulumi.Input.asInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?additionalCapabilities,
      'availabilityZones': ?availabilityZones,
      'diskPoolName': ?diskPoolName,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<Disk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<Disk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'managedBy': ?managedBy,
      'managedByExtended': ?managedByExtended,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'subnetId': subnetId,
      'tags': ?tags,
    };
  }

  factory DiskPoolArgs.fromMap(Map<String, dynamic> map) {
    return DiskPoolArgs(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : (map['additionalCapabilities'] as List).cast<String>(),
      availabilityZones: map['availabilityZones'] == null ? null : (map['availabilityZones'] as List).cast<String>(),
      diskPoolName: map['diskPoolName'] == null ? null : map['diskPoolName'] as String,
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<Disk>(map['disks'], (value) => Disk.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      managedBy: map['managedBy'] == null ? null : map['managedBy'] as String,
      managedByExtended: map['managedByExtended'] == null ? null : (map['managedByExtended'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      sku: Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      subnetId: map['subnetId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

