// ignore_for_file: unused_element, unnecessary_cast


class GetKeyPairsKeyPairInstance {
  /// The ID of the availability zone where the ECS instance is located.
  final String availabilityZone;
  final String description;
  final String imageId;
  /// The ID of the ECS instance.
  final String instanceId;
  /// The name of the ECS instance.
  final String instanceName;
  final String instanceType;
  /// Name of the key pair.
  final String keyName;
  /// The private IP address of the ECS instance.
  final String privateIp;
  /// The public IP address or EIP of the ECS instance.
  final String publicIp;
  final String regionId;
  final String status;
  /// The ID of the vSwitch attached to the ECS instance.
  final String vswitchId;

  /// Creates a new [GetKeyPairsKeyPairInstance].
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
  GetKeyPairsKeyPairInstance({
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

  factory GetKeyPairsKeyPairInstance.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsKeyPairInstance(
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

