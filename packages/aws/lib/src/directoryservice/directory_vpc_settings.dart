// ignore_for_file: unused_element, unnecessary_cast

class DirectoryVpcSettings {
  final List<String>? availabilityZones;

  /// The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs).
  final List<String> subnetIds;

  /// The identifier of the VPC that the directory is in.
  final String vpcId;

  /// Creates a new [DirectoryVpcSettings].
  /// [availabilityZones] Optional.
  /// [subnetIds] The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs).
  /// [vpcId] The identifier of the VPC that the directory is in.
  DirectoryVpcSettings({
    this.availabilityZones,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory DirectoryVpcSettings.fromMap(Map<String, dynamic> map) {
    return DirectoryVpcSettings(
      availabilityZones: map['availabilityZones'] == null
          ? null
          : (map['availabilityZones'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
