// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// The ID of the ECS instance to be bound.
  final pulumi.Input<String> clientInstanceId;
  /// The name of the ECS instance bound to the EAIS instance.
  final pulumi.Input<String> clientInstanceName;
  /// The type of the ECS instance bound to the EAIS instance.
  final pulumi.Input<String> clientInstanceType;
  /// The ID of the Instance.
  final pulumi.Input<String> id;
  /// The ID of the resource.
  final pulumi.Input<String> instanceId;
  /// The name of the resource.
  final pulumi.Input<String> instanceName;
  /// The type of the resource. Valid values: `eais.ei-a6.4xlarge`, `eais.ei-a6.2xlarge`, `eais.ei-a6.xlarge`, `eais.ei-a6.large`, `eais.ei-a6.medium`.
  final pulumi.Input<String> instanceType;
  /// The status of the resource. Valid values: `Attaching`, `Available`, `Detaching`, `InUse`, `Starting`, `Unavailable`.
  final pulumi.Input<String> status;
  /// The ID of the region to which the EAIS instance belongs.
  final pulumi.Input<String> zoneId;

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
      clientInstanceId: pulumi.Input.fromValue(map['clientInstanceId'] as String),
      clientInstanceName: pulumi.Input.fromValue(map['clientInstanceName'] as String),
      clientInstanceType: pulumi.Input.fromValue(map['clientInstanceType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

