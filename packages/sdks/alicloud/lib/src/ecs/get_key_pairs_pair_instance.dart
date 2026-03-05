// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeyPairsPairInstance {
  /// The ID of the availability zone where the ECS instance is located.
  final pulumi.Input<String> availabilityZone;
  final pulumi.Input<String> description;
  final pulumi.Input<String> imageId;
  /// The ID of the ECS instance.
  final pulumi.Input<String> instanceId;
  /// The name of the ECS instance.
  final pulumi.Input<String> instanceName;
  final pulumi.Input<String> instanceType;
  /// Name of the key pair.
  final pulumi.Input<String> keyName;
  /// The private IP address of the ECS instance.
  final pulumi.Input<String> privateIp;
  /// The public IP address or EIP of the ECS instance.
  final pulumi.Input<String> publicIp;
  final pulumi.Input<String> regionId;
  final pulumi.Input<String> status;
  /// The ID of the vSwitch attached to the ECS instance.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetKeyPairsPairInstance].
  /// [availabilityZone] The ID of the availability zone where the ECS instance is located.
  /// [description] Required.
  /// [imageId] Required.
  /// [instanceId] The ID of the ECS instance.
  /// [instanceName] The name of the ECS instance.
  /// [instanceType] Required.
  /// [keyName] Name of the key pair.
  /// [privateIp] The private IP address of the ECS instance.
  /// [publicIp] The public IP address or EIP of the ECS instance.
  /// [regionId] Required.
  /// [status] Required.
  /// [vswitchId] The ID of the vSwitch attached to the ECS instance.
  GetKeyPairsPairInstance({
    required this.availabilityZone,
    required this.description,
    required this.imageId,
    required this.instanceId,
    required this.instanceName,
    required this.instanceType,
    required this.keyName,
    required this.privateIp,
    required this.publicIp,
    required this.regionId,
    required this.status,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'description': description,
      'imageId': imageId,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'instanceType': instanceType,
      'keyName': keyName,
      'privateIp': privateIp,
      'publicIp': publicIp,
      'regionId': regionId,
      'status': status,
      'vswitchId': vswitchId,
    };
  }

  factory GetKeyPairsPairInstance.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsPairInstance(
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      privateIp: pulumi.Input.fromValue(map['privateIp'] as String),
      publicIp: pulumi.Input.fromValue(map['publicIp'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

