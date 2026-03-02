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
      availabilityZone: (map['availabilityZone'] as String).input(),
      description: (map['description'] as String).input(),
      imageId: (map['imageId'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      keyName: (map['keyName'] as String).input(),
      privateIp: (map['privateIp'] as String).input(),
      publicIp: (map['publicIp'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      status: (map['status'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

