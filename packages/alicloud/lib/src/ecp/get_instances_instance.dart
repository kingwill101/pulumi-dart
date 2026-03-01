// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// Instance Description.
  final String description;
  /// The ID of the Instance.
  final String id;
  /// The ID Of The Image.
  final String imageId;
  /// InstanceId.
  final String instanceId;
  /// Instance Name.
  final String instanceName;
  /// Instance Type.
  final String instanceType;
  /// The Key Name.
  final String keyPairName;
  /// The payment type.Valid values: `PayAsYouGo`,`Subscription`
  final String paymentType;
  /// Resolution.
  final String resolution;
  /// Security Group ID.
  final String securityGroupId;
  /// Instance Status.
  final String status;
  /// VNC login address.
  final String vncUrl;
  /// The vswitch id.
  final String vswitchId;
  final String zoneId;

  /// Creates a new [GetInstancesInstance].
  /// [description] Instance Description.
  /// [id] The ID of the Instance.
  /// [imageId] The ID Of The Image.
  /// [instanceId] InstanceId.
  /// [instanceName] Instance Name.
  /// [instanceType] Instance Type.
  /// [keyPairName] The Key Name.
  /// [paymentType] The payment type.Valid values: `PayAsYouGo`,`Subscription`
  /// [resolution] Resolution.
  /// [securityGroupId] Security Group ID.
  /// [status] Instance Status.
  /// [vncUrl] VNC login address.
  /// [vswitchId] The vswitch id.
  /// [zoneId] Required.
  GetInstancesInstance({
    required this.description,
    required this.id,
    required this.imageId,
    required this.instanceId,
    required this.instanceName,
    required this.instanceType,
    required this.keyPairName,
    required this.paymentType,
    required this.resolution,
    required this.securityGroupId,
    required this.status,
    required this.vncUrl,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'imageId': imageId,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'instanceType': instanceType,
      'keyPairName': keyPairName,
      'paymentType': paymentType,
      'resolution': resolution,
      'securityGroupId': securityGroupId,
      'status': status,
      'vncUrl': vncUrl,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      description: map['description'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      instanceType: map['instanceType'] as String,
      keyPairName: map['keyPairName'] as String,
      paymentType: map['paymentType'] as String,
      resolution: map['resolution'] as String,
      securityGroupId: map['securityGroupId'] as String,
      status: map['status'] as String,
      vncUrl: map['vncUrl'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

