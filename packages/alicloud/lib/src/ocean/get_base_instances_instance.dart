// ignore_for_file: unused_element, unnecessary_cast


class GetBaseInstancesInstance {
  /// The product code of the OceanBase cluster.
  final String commodityCode;
  /// The number of CPU cores of the cluster.
  final int cpu;
  /// The creation time of the resource.
  final String createTime;
  /// The size of the storage space, in GB.
  final String diskSize;
  /// The ID of the Instance.
  final String id;
  /// Cluster specification information.
  final String instanceClass;
  /// OceanBase cluster ID.
  final String instanceId;
  /// OceanBase cluster name.
  final String instanceName;
  /// The number of nodes in the cluster.
  final String nodeNum;
  /// The payment method of the instance.
  final String paymentType;
  /// The ID of the enterprise resource group to which the instance resides.
  final String resourceGroupId;
  /// Series of OceanBase clusters.
  final String series;
  /// The status of the resource.
  final String status;
  /// Information about the zone where the cluster is deployed.
  final List<String> zones;

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
      commodityCode: map['commodityCode'] as String,
      cpu: map['cpu'] as int,
      createTime: map['createTime'] as String,
      diskSize: map['diskSize'] as String,
      id: map['id'] as String,
      instanceClass: map['instanceClass'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      nodeNum: map['nodeNum'] as String,
      paymentType: map['paymentType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      series: map['series'] as String,
      status: map['status'] as String,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

