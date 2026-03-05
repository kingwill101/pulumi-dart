// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// Instance creation time
  final pulumi.Input<String> createTime;
  /// The target database engine type.
  final pulumi.Input<String> destinationEndpointEngineName;
  /// The destination instance region.
  final pulumi.Input<String> destinationRegion;
  /// The ID of the subscription instance.
  final pulumi.Input<String> dtsInstanceId;
  /// The ID of the instance.
  final pulumi.Input<String> id;
  /// The type of the migration or synchronization instance.- The specifications of the migration instance: **xxlarge**, **xlarge**, **large**, **medium**, **small**.- The types of synchronization instances: **large**, **medium**, **small**, **micro**.
  final pulumi.Input<String> instanceClass;
  final pulumi.Input<String> instanceName;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// Resource Group ID
  final pulumi.Input<String> resourceGroupId;
  /// Source instance database engine type.
  final pulumi.Input<String> sourceEndpointEngineName;
  /// The source instance region.
  final pulumi.Input<String> sourceRegion;
  /// Instance status.
  final pulumi.Input<String> status;
  /// The tag value corresponding to the tag key.
  final pulumi.Input<Map<String, String>>? tags;
  /// The instance type. Valid values: -**MIGRATION**: MIGRATION.-**SYNC**: synchronization.-**SUBSCRIBE**: SUBSCRIBE.
  final pulumi.Input<String> type;

  /// Creates a new [GetInstancesInstance].
  /// [createTime] Instance creation time
  /// [destinationEndpointEngineName] The target database engine type.
  /// [destinationRegion] The destination instance region.
  /// [dtsInstanceId] The ID of the subscription instance.
  /// [id] The ID of the instance.
  /// [instanceClass] The type of the migration or synchronization instance.- The specifications of the migration instance: **xxlarge**, **xlarge**, **large**, **medium**, **small**.- The types of synchronization instances: **large**, **medium**, **small**, **micro**.
  /// [instanceName] Required.
  /// [paymentType] The payment type of the resource.
  /// [resourceGroupId] Resource Group ID
  /// [sourceEndpointEngineName] Source instance database engine type.
  /// [sourceRegion] The source instance region.
  /// [status] Instance status.
  /// [tags] The tag value corresponding to the tag key.
  /// [type] The instance type. Valid values: -**MIGRATION**: MIGRATION.-**SYNC**: synchronization.-**SUBSCRIBE**: SUBSCRIBE.
  GetInstancesInstance({
    required this.createTime,
    required this.destinationEndpointEngineName,
    required this.destinationRegion,
    required this.dtsInstanceId,
    required this.id,
    required this.instanceClass,
    required this.instanceName,
    required this.paymentType,
    required this.resourceGroupId,
    required this.sourceEndpointEngineName,
    required this.sourceRegion,
    required this.status,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'destinationEndpointEngineName': destinationEndpointEngineName,
      'destinationRegion': destinationRegion,
      'dtsInstanceId': dtsInstanceId,
      'id': id,
      'instanceClass': instanceClass,
      'instanceName': instanceName,
      'paymentType': paymentType,
      'resourceGroupId': resourceGroupId,
      'sourceEndpointEngineName': sourceEndpointEngineName,
      'sourceRegion': sourceRegion,
      'status': status,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      destinationEndpointEngineName: pulumi.Input.fromValue(map['destinationEndpointEngineName'] as String),
      destinationRegion: pulumi.Input.fromValue(map['destinationRegion'] as String),
      dtsInstanceId: pulumi.Input.fromValue(map['dtsInstanceId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceClass: pulumi.Input.fromValue(map['instanceClass'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      sourceEndpointEngineName: pulumi.Input.fromValue(map['sourceEndpointEngineName'] as String),
      sourceRegion: pulumi.Input.fromValue(map['sourceRegion'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

