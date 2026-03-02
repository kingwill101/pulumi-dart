// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBaseInstancesInstance {
  /// The product code of the OceanBase cluster.
  final pulumi.Input<String> commodityCode;
  /// The number of CPU cores of the cluster.
  final pulumi.Input<int> cpu;
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The size of the storage space, in GB.
  final pulumi.Input<String> diskSize;
  /// The ID of the Instance.
  final pulumi.Input<String> id;
  /// Cluster specification information.
  final pulumi.Input<String> instanceClass;
  /// OceanBase cluster ID.
  final pulumi.Input<String> instanceId;
  /// OceanBase cluster name.
  final pulumi.Input<String> instanceName;
  /// The number of nodes in the cluster.
  final pulumi.Input<String> nodeNum;
  /// The payment method of the instance.
  final pulumi.Input<String> paymentType;
  /// The ID of the enterprise resource group to which the instance resides.
  final pulumi.Input<String> resourceGroupId;
  /// Series of OceanBase clusters.
  final pulumi.Input<String> series;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// Information about the zone where the cluster is deployed.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [GetBaseInstancesInstance].
  /// [commodityCode] The product code of the OceanBase cluster.
  /// [cpu] The number of CPU cores of the cluster.
  /// [createTime] The creation time of the resource.
  /// [diskSize] The size of the storage space, in GB.
  /// [id] The ID of the Instance.
  /// [instanceClass] Cluster specification information.
  /// [instanceId] OceanBase cluster ID.
  /// [instanceName] OceanBase cluster name.
  /// [nodeNum] The number of nodes in the cluster.
  /// [paymentType] The payment method of the instance.
  /// [resourceGroupId] The ID of the enterprise resource group to which the instance resides.
  /// [series] Series of OceanBase clusters.
  /// [status] The status of the resource.
  /// [zones] Information about the zone where the cluster is deployed.
  GetBaseInstancesInstance({
    required this.commodityCode,
    required this.cpu,
    required this.createTime,
    required this.diskSize,
    required this.id,
    required this.instanceClass,
    required this.instanceId,
    required this.instanceName,
    required this.nodeNum,
    required this.paymentType,
    required this.resourceGroupId,
    required this.series,
    required this.status,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commodityCode': commodityCode,
      'cpu': cpu,
      'createTime': createTime,
      'diskSize': diskSize,
      'id': id,
      'instanceClass': instanceClass,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'nodeNum': nodeNum,
      'paymentType': paymentType,
      'resourceGroupId': resourceGroupId,
      'series': series,
      'status': status,
      'zones': zones,
    };
  }

  factory GetBaseInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetBaseInstancesInstance(
      commodityCode: (map['commodityCode'] as String).input(),
      cpu: (map['cpu'] as int).input(),
      createTime: (map['createTime'] as String).input(),
      diskSize: (map['diskSize'] as String).input(),
      id: (map['id'] as String).input(),
      instanceClass: (map['instanceClass'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      nodeNum: (map['nodeNum'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      series: (map['series'] as String).input(),
      status: (map['status'] as String).input(),
      zones: ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

