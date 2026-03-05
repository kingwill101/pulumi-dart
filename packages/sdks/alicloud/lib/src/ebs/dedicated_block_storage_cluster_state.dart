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
  /// Cloud disk performance level, possible values:-PL0.-PL1.-PL2.-PL3.&gt; Only valid in SupportedCategory = cloud_essd.
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
  /// [performanceLevel] Cloud disk performance level, possible values:-PL0.-PL1.-PL2.-PL3.&gt; Only valid in SupportedCategory = cloud_essd.
  /// [resourceGroupId] The ID of the resource group
  /// [status] The status of the resource
  /// [supportedCategory] This parameter is not supported.
  /// [totalCapacity] The total capacity of the dedicated block storage cluster. Unit: GiB.
  /// [type] The dedicated block storage cluster performance type. Possible values:-Standard: Basic type. This type of dedicated block storage cluster can create an ESSD PL0 cloud disk.-Premium: performance type. This type of dedicated block storage cluster can create an ESSD PL1 cloud disk.
  /// [usedCapacity] The used (created disk) capacity of the current cluster, in GB
  /// [zoneId] The zone ID  of the resource
  DedicatedBlockStorageClusterState({
    this.availableCapacity,
    this.category,
    this.createTime,
    this.dedicatedBlockStorageClusterId,
    this.dedicatedBlockStorageClusterName,
    this.deliveryCapacity,
    this.description,
    this.expiredTime,
    this.performanceLevel,
    this.resourceGroupId,
    this.status,
    this.supportedCategory,
    this.totalCapacity,
    this.type,
    this.usedCapacity,
    this.zoneId,
  });

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
      availableCapacity: (() { final guardedValue = map['availableCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedBlockStorageClusterId: (() { final guardedValue = map['dedicatedBlockStorageClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedBlockStorageClusterName: (() { final guardedValue = map['dedicatedBlockStorageClusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deliveryCapacity: (() { final guardedValue = map['deliveryCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiredTime: (() { final guardedValue = map['expiredTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceLevel: (() { final guardedValue = map['performanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedCategory: (() { final guardedValue = map['supportedCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalCapacity: (() { final guardedValue = map['totalCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usedCapacity: (() { final guardedValue = map['usedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

