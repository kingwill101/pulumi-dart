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
      commodityCode: pulumi.Input.fromValue(map['commodityCode'] as String),
      cpu: pulumi.Input.fromValue(map['cpu'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      diskSize: pulumi.Input.fromValue(map['diskSize'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceClass: pulumi.Input.fromValue(map['instanceClass'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      nodeNum: pulumi.Input.fromValue(map['nodeNum'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      series: pulumi.Input.fromValue(map['series'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}

