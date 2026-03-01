// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// Instance creation time
  final String createTime;
  /// The target database engine type.
  final String destinationEndpointEngineName;
  /// The destination instance region.
  final String destinationRegion;
  /// The ID of the subscription instance.
  final String dtsInstanceId;
  /// The ID of the instance.
  final String id;
  /// The type of the migration or synchronization instance.- The specifications of the migration instance: **xxlarge**, **xlarge**, **large**, **medium**, **small**.- The types of synchronization instances: **large**, **medium**, **small**, **micro**.
  final String instanceClass;
  final String instanceName;
  /// The payment type of the resource.
  final String paymentType;
  /// Resource Group ID
  final String resourceGroupId;
  /// Source instance database engine type.
  final String sourceEndpointEngineName;
  /// The source instance region.
  final String sourceRegion;
  /// Instance status.
  final String status;
  /// The tag value corresponding to the tag key.
  final Map<String, String>? tags;
  /// The instance type. Valid values: -**MIGRATION**: MIGRATION.-**SYNC**: synchronization.-**SUBSCRIBE**: SUBSCRIBE.
  final String type;

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
      createTime: map['createTime'] as String,
      destinationEndpointEngineName: map['destinationEndpointEngineName'] as String,
      destinationRegion: map['destinationRegion'] as String,
      dtsInstanceId: map['dtsInstanceId'] as String,
      id: map['id'] as String,
      instanceClass: map['instanceClass'] as String,
      instanceName: map['instanceName'] as String,
      paymentType: map['paymentType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      sourceEndpointEngineName: map['sourceEndpointEngineName'] as String,
      sourceRegion: map['sourceRegion'] as String,
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

