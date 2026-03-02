// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedBlockStorageClustersCluster {
  /// The available capacity of the dedicated block storage cluster. Unit: GiB.
  final pulumi.Input<String> availableCapacity;
  /// The type of cloud disk that can be created by a dedicated block storage cluster.
  final pulumi.Input<String> category;
  /// The creation time of the resource
  final pulumi.Input<String> createTime;
  /// The first ID of the resource
  final pulumi.Input<String> dedicatedBlockStorageClusterId;
  /// The name of the resource
  final pulumi.Input<String> dedicatedBlockStorageClusterName;
  /// Capacity to be delivered in GB.
  final pulumi.Input<String> deliveryCapacity;
  /// The description of the dedicated block storage cluster.
  final pulumi.Input<String> description;
  /// The expiration time of the dedicated block storage cluster, in the Unix timestamp format, in seconds.
  final pulumi.Input<String> expiredTime;
  final pulumi.Input<String> id;
  /// Cloud disk performance level, possible values:-PL0.-PL1.-PL2.-PL3.> Only valid in SupportedCategory = cloud_essd.
  final pulumi.Input<String> performanceLevel;
  /// The ID of the resource group
  final pulumi.Input<String> resourceGroupId;
  /// The status of the resource
  final pulumi.Input<String> status;
  /// This parameter is not supported.
  final pulumi.Input<String> supportedCategory;
  /// The total capacity of the dedicated block storage cluster. Unit: GiB.
  final pulumi.Input<String> totalCapacity;
  /// The dedicated block storage cluster performance type. Possible values:-Standard: Basic type. This type of dedicated block storage cluster can create an ESSD PL0 cloud disk.-Premium: performance type. This type of dedicated block storage cluster can create an ESSD PL1 cloud disk.
  final pulumi.Input<String> type;
  /// The used (created disk) capacity of the current cluster, in GB
  final pulumi.Input<String> usedCapacity;
  /// The zone ID  of the resource
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetDedicatedBlockStorageClustersCluster].
  /// [availableCapacity] The available capacity of the dedicated block storage cluster. Unit: GiB.
  /// [category] The type of cloud disk that can be created by a dedicated block storage cluster.
  /// [createTime] The creation time of the resource
  /// [dedicatedBlockStorageClusterId] The first ID of the resource
  /// [dedicatedBlockStorageClusterName] The name of the resource
  /// [deliveryCapacity] Capacity to be delivered in GB.
  /// [description] The description of the dedicated block storage cluster.
  /// [expiredTime] The expiration time of the dedicated block storage cluster, in the Unix timestamp format, in seconds.
  /// [id] Required.
  /// [performanceLevel] Cloud disk performance level, possible values:-PL0.-PL1.-PL2.-PL3.> Only valid in SupportedCategory = cloud_essd.
  /// [resourceGroupId] The ID of the resource group
  /// [status] The status of the resource
  /// [supportedCategory] This parameter is not supported.
  /// [totalCapacity] The total capacity of the dedicated block storage cluster. Unit: GiB.
  /// [type] The dedicated block storage cluster performance type. Possible values:-Standard: Basic type. This type of dedicated block storage cluster can create an ESSD PL0 cloud disk.-Premium: performance type. This type of dedicated block storage cluster can create an ESSD PL1 cloud disk.
  /// [usedCapacity] The used (created disk) capacity of the current cluster, in GB
  /// [zoneId] The zone ID  of the resource
  GetDedicatedBlockStorageClustersCluster({
    required this.availableCapacity,
    required this.category,
    required this.createTime,
    required this.dedicatedBlockStorageClusterId,
    required this.dedicatedBlockStorageClusterName,
    required this.deliveryCapacity,
    required this.description,
    required this.expiredTime,
    required this.id,
    required this.performanceLevel,
    required this.resourceGroupId,
    required this.status,
    required this.supportedCategory,
    required this.totalCapacity,
    required this.type,
    required this.usedCapacity,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableCapacity': availableCapacity,
      'category': category,
      'createTime': createTime,
      'dedicatedBlockStorageClusterId': dedicatedBlockStorageClusterId,
      'dedicatedBlockStorageClusterName': dedicatedBlockStorageClusterName,
      'deliveryCapacity': deliveryCapacity,
      'description': description,
      'expiredTime': expiredTime,
      'id': id,
      'performanceLevel': performanceLevel,
      'resourceGroupId': resourceGroupId,
      'status': status,
      'supportedCategory': supportedCategory,
      'totalCapacity': totalCapacity,
      'type': type,
      'usedCapacity': usedCapacity,
      'zoneId': zoneId,
    };
  }

  factory GetDedicatedBlockStorageClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetDedicatedBlockStorageClustersCluster(
      availableCapacity: (map['availableCapacity'] as String).input(),
      category: (map['category'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      dedicatedBlockStorageClusterId: (map['dedicatedBlockStorageClusterId'] as String).input(),
      dedicatedBlockStorageClusterName: (map['dedicatedBlockStorageClusterName'] as String).input(),
      deliveryCapacity: (map['deliveryCapacity'] as String).input(),
      description: (map['description'] as String).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      id: (map['id'] as String).input(),
      performanceLevel: (map['performanceLevel'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      status: (map['status'] as String).input(),
      supportedCategory: (map['supportedCategory'] as String).input(),
      totalCapacity: (map['totalCapacity'] as String).input(),
      type: (map['type'] as String).input(),
      usedCapacity: (map['usedCapacity'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

