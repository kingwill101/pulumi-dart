// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// Instance Description.
  final pulumi.Input<String> description;

  /// The ID of the Instance.
  final pulumi.Input<String> id;

  /// The ID Of The Image.
  final pulumi.Input<String> imageId;

  /// InstanceId.
  final pulumi.Input<String> instanceId;

  /// Instance Name.
  final pulumi.Input<String> instanceName;

  /// Instance Type.
  final pulumi.Input<String> instanceType;

  /// The Key Name.
  final pulumi.Input<String> keyPairName;

  /// The payment type.Valid values: `PayAsYouGo`,`Subscription`
  final pulumi.Input<String> paymentType;

  /// Resolution.
  final pulumi.Input<String> resolution;

  /// Security Group ID.
  final pulumi.Input<String> securityGroupId;

  /// Instance Status.
  final pulumi.Input<String> status;

  /// VNC login address.
  final pulumi.Input<String> vncUrl;

  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  final pulumi.Input<String> zoneId;

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
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      keyPairName: pulumi.Input.fromValue(map['keyPairName'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      resolution: pulumi.Input.fromValue(map['resolution'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vncUrl: pulumi.Input.fromValue(map['vncUrl'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
