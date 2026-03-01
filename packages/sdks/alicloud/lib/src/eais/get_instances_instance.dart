// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// The ID of the ECS instance to be bound.
  final String clientInstanceId;
  /// The name of the ECS instance bound to the EAIS instance.
  final String clientInstanceName;
  /// The type of the ECS instance bound to the EAIS instance.
  final String clientInstanceType;
  /// The ID of the Instance.
  final String id;
  /// The ID of the resource.
  final String instanceId;
  /// The name of the resource.
  final String instanceName;
  /// The type of the resource. Valid values: `eais.ei-a6.4xlarge`, `eais.ei-a6.2xlarge`, `eais.ei-a6.xlarge`, `eais.ei-a6.large`, `eais.ei-a6.medium`.
  final String instanceType;
  /// The status of the resource. Valid values: `Attaching`, `Available`, `Detaching`, `InUse`, `Starting`, `Unavailable`.
  final String status;
  /// The ID of the region to which the EAIS instance belongs.
  final String zoneId;

  /// Creates a new [GetInstancesInstance].
  /// [clientInstanceId] The ID of the ECS instance to be bound.
  /// [clientInstanceName] The name of the ECS instance bound to the EAIS instance.
  /// [clientInstanceType] The type of the ECS instance bound to the EAIS instance.
  /// [id] The ID of the Instance.
  /// [instanceId] The ID of the resource.
  /// [instanceName] The name of the resource.
  /// [instanceType] The type of the resource. Valid values: `eais.ei-a6.4xlarge`, `eais.ei-a6.2xlarge`, `eais.ei-a6.xlarge`, `eais.ei-a6.large`, `eais.ei-a6.medium`.
  /// [status] The status of the resource. Valid values: `Attaching`, `Available`, `Detaching`, `InUse`, `Starting`, `Unavailable`.
  /// [zoneId] The ID of the region to which the EAIS instance belongs.
  GetInstancesInstance({
    required this.clientInstanceId,
    required this.clientInstanceName,
    required this.clientInstanceType,
    required this.id,
    required this.instanceId,
    required this.instanceName,
    required this.instanceType,
    required this.status,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientInstanceId': clientInstanceId,
      'clientInstanceName': clientInstanceName,
      'clientInstanceType': clientInstanceType,
      'id': id,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'instanceType': instanceType,
      'status': status,
      'zoneId': zoneId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      clientInstanceId: map['clientInstanceId'] as String,
      clientInstanceName: map['clientInstanceName'] as String,
      clientInstanceType: map['clientInstanceType'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      instanceType: map['instanceType'] as String,
      status: map['status'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

