// ignore_for_file: unused_element, unnecessary_cast

class EntityRecognizerVpcConfig {
  /// List of security group IDs.
  final List<String> securityGroupIds;

  /// List of VPC subnets.
  final List<String> subnets;

  /// Creates a new [EntityRecognizerVpcConfig].
  /// [securityGroupIds] List of security group IDs.
  /// [subnets] List of VPC subnets.
  EntityRecognizerVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnets'] = subnets;
    return map;
  }

  factory EntityRecognizerVpcConfig.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerVpcConfig(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
