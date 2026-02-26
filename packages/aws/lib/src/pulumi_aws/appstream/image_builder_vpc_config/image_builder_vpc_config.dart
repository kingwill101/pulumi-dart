// ignore_for_file: unused_element, unnecessary_cast

class ImageBuilderVpcConfig {
  /// Identifiers of the security groups for the image builder or image builder.
  final List<String>? securityGroupIds;

  /// Identifier of the subnet to which a network interface is attached from the image builder instance.
  final List<String>? subnetIds;

  ImageBuilderVpcConfig({
    this.securityGroupIds,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    return map;
  }

  factory ImageBuilderVpcConfig.fromMap(Map<String, dynamic> map) {
    return ImageBuilderVpcConfig(
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
    );
  }
}
