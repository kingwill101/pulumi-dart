// ignore_for_file: unused_element, unnecessary_cast

class ServiceRegionVpcSettings {
  /// The identifiers of the subnets for the directory servers.
  final List<String> subnetIds;

  /// The identifier of the VPC in which to create the directory.
  final String vpcId;

  /// Creates a new [ServiceRegionVpcSettings].
  /// [subnetIds] The identifiers of the subnets for the directory servers.
  /// [vpcId] The identifier of the VPC in which to create the directory.
  ServiceRegionVpcSettings({
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subnetIds'] = subnetIds;
    map['vpcId'] = vpcId;
    return map;
  }

  factory ServiceRegionVpcSettings.fromMap(Map<String, dynamic> map) {
    return ServiceRegionVpcSettings(
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
