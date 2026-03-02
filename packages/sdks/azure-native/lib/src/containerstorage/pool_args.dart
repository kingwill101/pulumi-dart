// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment.dart';
import 'pool_type.dart';
import 'resources.dart';

/// {@template pulumi_containerstorage_pool_args_doc}
/// The set of arguments for Pool.
/// {@endtemplate}
/// {@macro pulumi_containerstorage_pool_args_doc}
class PoolArgs {
  /// List of resources that should have access to the pool. Typically ARM references to AKS clusters or ACI Container Groups. For local and standard this must be a single reference. For ElasticSAN there can be many.
  final pulumi.Input<List<Assignment>>? assignments;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Pool Object
  final pulumi.Input<String>? poolName;
  /// Type of the Pool: ephemeralDisk, azureDisk, or elasticsan.
  final pulumi.Input<PoolType> poolType;
  /// ReclaimPolicy defines what happens to the backend storage when StoragePool is deleted
  final pulumi.Input<String>? reclaimPolicy;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resources represent the resources the pool should have.
  final pulumi.Input<Resources>? resources;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// List of availability zones that resources can be created in.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PoolArgs].
  /// [assignments] List of resources that should have access to the pool. Typically ARM references to AKS clusters or ACI Container Groups. For local and standard this must be a single reference. For ElasticSAN there can be many.
  /// [location] The geo-location where the resource lives
  /// [poolName] Pool Object
  /// [poolType] Type of the Pool: ephemeralDisk, azureDisk, or elasticsan.
  /// [reclaimPolicy] ReclaimPolicy defines what happens to the backend storage when StoragePool is deleted
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resources] Resources represent the resources the pool should have.
  /// [tags] Resource tags.
  /// [zones] List of availability zones that resources can be created in.
  PoolArgs({
    this.assignments,
    this.location,
    this.poolName,
    required this.poolType,
    this.reclaimPolicy,
    required this.resourceGroupName,
    this.resources,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignments': ?pulumi.Input.mapOptionalInputValue<List<Assignment>, List<Map<String, dynamic>>>(assignments, (value) => pulumi.Input.encodeList<Assignment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'poolName': ?poolName,
      'poolType': pulumi.Input.mapInputValue<PoolType, Map<String, dynamic>>(poolType, (value) => value.toMap()),
      'reclaimPolicy': ?reclaimPolicy,
      'resourceGroupName': resourceGroupName,
      'resources': ?pulumi.Input.mapOptionalInputValue<Resources, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory PoolArgs.fromMap(Map<String, dynamic> map) {
    return PoolArgs(
      assignments: map['assignments'] == null ? null : (pulumi.Input.decodeList<Assignment>(map['assignments']!, (value) => Assignment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      poolName: map['poolName'] == null ? null : (map['poolName']! as String).input(),
      poolType: (PoolType.fromMap((map['poolType'] as Map).cast<String, dynamic>())).input(),
      reclaimPolicy: map['reclaimPolicy'] == null ? null : (map['reclaimPolicy']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resources: map['resources'] == null ? null : (Resources.fromMap((map['resources']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

