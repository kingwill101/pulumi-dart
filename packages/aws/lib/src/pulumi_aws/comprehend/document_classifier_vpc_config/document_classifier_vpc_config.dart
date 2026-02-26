// ignore_for_file: unused_element, unnecessary_cast

class DocumentClassifierVpcConfig {
  /// List of security group IDs.
  final List<String> securityGroupIds;

  /// List of VPC subnets.
  final List<String> subnets;

  DocumentClassifierVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnets'] = subnets;
    return map;
  }

  factory DocumentClassifierVpcConfig.fromMap(Map<String, dynamic> map) {
    return DocumentClassifierVpcConfig(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
