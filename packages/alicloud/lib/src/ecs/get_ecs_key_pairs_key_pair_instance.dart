// ignore_for_file: unused_element, unnecessary_cast


class GetEcsKeyPairsKeyPairInstance {
  /// The zone ID of the instance.
  final String availabilityZone;
  /// The description of the ECS instance.
  final String description;
  /// The image ID of the instance.
  final String imageId;
  /// The ID of the ECS instance.
  final String instanceId;
  /// The name of the ECS instance.
  final String instanceName;
  /// The instance type of the instance.
  final String instanceType;
  /// The name of the key pair.
  final String keyName;
  /// The private IP address of the ECS instance.
  final String privateIp;
  /// The public IP address or EIP of the ECS instance.
  final String publicIp;
  /// The region ID of the instance.
  final String regionId;
  /// The status of the instance.
  final String status;
  /// The ID of the vSwitch.
  final String vswitchId;

  /// Creates a new [GetEcsKeyPairsKeyPairInstance].
  /// [availabilityZone] The zone ID of the instance.
  /// [description] The description of the ECS instance.
  /// [imageId] The image ID of the instance.
  /// [instanceId] The ID of the ECS instance.
  /// [instanceName] The name of the ECS instance.
  /// [instanceType] The instance type of the instance.
  /// [keyName] The name of the key pair.
  /// [privateIp] The private IP address of the ECS instance.
  /// [publicIp] The public IP address or EIP of the ECS instance.
  /// [regionId] The region ID of the instance.
  /// [status] The status of the instance.
  /// [vswitchId] The ID of the vSwitch.
  GetEcsKeyPairsKeyPairInstance({
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

  factory GetEcsKeyPairsKeyPairInstance.fromMap(Map<String, dynamic> map) {
    return GetEcsKeyPairsKeyPairInstance(
      availabilityZone: map['availabilityZone'] as String,
      description: map['description'] as String,
      imageId: map['imageId'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      instanceType: map['instanceType'] as String,
      keyName: map['keyName'] as String,
      privateIp: map['privateIp'] as String,
      publicIp: map['publicIp'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

