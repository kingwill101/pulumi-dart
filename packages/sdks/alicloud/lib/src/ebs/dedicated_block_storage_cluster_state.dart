// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DedicatedBlockStorageCluster resources.
class DedicatedBlockStorageClusterState {
  /// The available capacity of the dedicated block storage cluster. Unit: GiB.
  final pulumi.Input<String>? availableCapacity;
  /// The type of cloud disk that can be created by a dedicated block storage cluster.
  final pulumi.Input<String>? category;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The first ID of the resource
  final pulumi.Input<String>? dedicatedBlockStorageClusterId;
  /// The name of the resource
  final pulumi.Input<String>? dedicatedBlockStorageClusterName;
  /// Capacity to be delivered in GB.
  final pulumi.Input<String>? deliveryCapacity;
  /// The description of the dedicated block storage cluster.
  final pulumi.Input<String>? description;
  /// The expiration time of the dedicated block storage cluster, in the Unix timestamp format, in seconds.
  final pulumi.Input<String>? expiredTime;
  /// Cloud disk performance level, possible values:-PL0.-PL1.-PL2.-PL3.> Only valid in SupportedCategory = cloud_essd.
  final pulumi.Input<String>? performanceLevel;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// This parameter is not supported.
  final pulumi.Input<String>? supportedCategory;
  /// The total capacity of the dedicated block storage cluster. Unit: GiB.
  final pulumi.Input<String>? totalCapacity;
  /// The dedicated block storage cluster performance type. Possible values:-Standard: Basic type. This type of dedicated block storage cluster can create an ESSD PL0 cloud disk.-Premium: performance type. This type of dedicated block storage cluster can create an ESSD PL1 cloud disk.
  final pulumi.Input<String>? type;
  /// The used (created disk) capacity of the current cluster, in GB
  final pulumi.Input<String>? usedCapacity;
  /// The zone ID  of the resource
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DedicatedBlockStorageClusterState].
  /// [availableCapacity] The available capacity of the dedicated block storage cluster. Unit: GiB.
  /// [category] The type of cloud disk that can be created by a dedicated block storage cluster.
  /// [createTime] The creation time of the resource
  /// [dedicatedBlockStorageClusterId] The first ID of the resource
  /// [dedicatedBlockStorageClusterName] The name of the resource
  /// [deliveryCapacity] Capacity to be delivered in GB.
  /// [description] The description of the dedicated block storage cluster.
  /// [expiredTime] The expiration time of the dedicated block storage cluster, in the Unix timestamp format, in seconds.
  /// [performanceLevel] Cloud disk performance level, possible values:-PL0.-PL1.-PL2.-PL3.> Only valid in SupportedCategory = cloud_essd.
  /// [resourceGroupId] The ID of the resource group
  /// [status] The status of the resource
  /// [supportedCategory] This parameter is not supported.
  /// [totalCapacity] The total capacity of the dedicated block storage cluster. Unit: GiB.
  /// [type] The dedicated block storage cluster performance type. Possible values:-Standard: Basic type. This type of dedicated block storage cluster can create an ESSD PL0 cloud disk.-Premium: performance type. This type of dedicated block storage cluster can create an ESSD PL1 cloud disk.
  /// [usedCapacity] The used (created disk) capacity of the current cluster, in GB
  /// [zoneId] The zone ID  of the resource
  DedicatedBlockStorageClusterState({
    pulumi.Output<String>? availableCapacity,
    pulumi.Output<String>? category,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dedicatedBlockStorageClusterId,
    pulumi.Output<String>? dedicatedBlockStorageClusterName,
    pulumi.Output<String>? deliveryCapacity,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expiredTime,
    pulumi.Output<String>? performanceLevel,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? supportedCategory,
    pulumi.Output<String>? totalCapacity,
    pulumi.Output<String>? type,
    pulumi.Output<String>? usedCapacity,
    pulumi.Output<String>? zoneId,
  }) :
      availableCapacity = pulumi.Input.asOptionalInput<String>(availableCapacity),
      category = pulumi.Input.asOptionalInput<String>(category),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dedicatedBlockStorageClusterId = pulumi.Input.asOptionalInput<String>(dedicatedBlockStorageClusterId),
      dedicatedBlockStorageClusterName = pulumi.Input.asOptionalInput<String>(dedicatedBlockStorageClusterName),
      deliveryCapacity = pulumi.Input.asOptionalInput<String>(deliveryCapacity),
      description = pulumi.Input.asOptionalInput<String>(description),
      expiredTime = pulumi.Input.asOptionalInput<String>(expiredTime),
      performanceLevel = pulumi.Input.asOptionalInput<String>(performanceLevel),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      supportedCategory = pulumi.Input.asOptionalInput<String>(supportedCategory),
      totalCapacity = pulumi.Input.asOptionalInput<String>(totalCapacity),
      type = pulumi.Input.asOptionalInput<String>(type),
      usedCapacity = pulumi.Input.asOptionalInput<String>(usedCapacity),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableCapacity': ?availableCapacity,
      'category': ?category,
      'createTime': ?createTime,
      'dedicatedBlockStorageClusterId': ?dedicatedBlockStorageClusterId,
      'dedicatedBlockStorageClusterName': ?dedicatedBlockStorageClusterName,
      'deliveryCapacity': ?deliveryCapacity,
      'description': ?description,
      'expiredTime': ?expiredTime,
      'performanceLevel': ?performanceLevel,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'supportedCategory': ?supportedCategory,
      'totalCapacity': ?totalCapacity,
      'type': ?type,
      'usedCapacity': ?usedCapacity,
      'zoneId': ?zoneId,
    };
  }

  factory DedicatedBlockStorageClusterState.fromMap(Map<String, dynamic> map) {
    return DedicatedBlockStorageClusterState(
      availableCapacity: map['availableCapacity'] == null ? null : pulumi.Output.create<String>(map['availableCapacity'] as String),
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dedicatedBlockStorageClusterId: map['dedicatedBlockStorageClusterId'] == null ? null : pulumi.Output.create<String>(map['dedicatedBlockStorageClusterId'] as String),
      dedicatedBlockStorageClusterName: map['dedicatedBlockStorageClusterName'] == null ? null : pulumi.Output.create<String>(map['dedicatedBlockStorageClusterName'] as String),
      deliveryCapacity: map['deliveryCapacity'] == null ? null : pulumi.Output.create<String>(map['deliveryCapacity'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expiredTime: map['expiredTime'] == null ? null : pulumi.Output.create<String>(map['expiredTime'] as String),
      performanceLevel: map['performanceLevel'] == null ? null : pulumi.Output.create<String>(map['performanceLevel'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      supportedCategory: map['supportedCategory'] == null ? null : pulumi.Output.create<String>(map['supportedCategory'] as String),
      totalCapacity: map['totalCapacity'] == null ? null : pulumi.Output.create<String>(map['totalCapacity'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      usedCapacity: map['usedCapacity'] == null ? null : pulumi.Output.create<String>(map['usedCapacity'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

