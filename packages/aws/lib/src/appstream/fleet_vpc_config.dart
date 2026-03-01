// ignore_for_file: unused_element, unnecessary_cast

class FleetVpcConfig {
  /// Identifiers of the security groups for the fleet or image builder.
  final List<String>? securityGroupIds;

  /// Identifiers of the subnets to which a network interface is attached from the fleet instance or image builder instance.
  final List<String>? subnetIds;

  /// Creates a new [FleetVpcConfig].
  /// [securityGroupIds] Identifiers of the security groups for the fleet or image builder.
  /// [subnetIds] Identifiers of the subnets to which a network interface is attached from the fleet instance or image builder instance.
  FleetVpcConfig({this.securityGroupIds, this.subnetIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
    };
  }

  factory FleetVpcConfig.fromMap(Map<String, dynamic> map) {
    return FleetVpcConfig(
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
    );
  }
}
