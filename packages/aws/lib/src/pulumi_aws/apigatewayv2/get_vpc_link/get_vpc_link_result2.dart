// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getVpcLink.
class GetVpcLinkResult2 {
  /// ARN of the VPC Link.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// VPC Link Name.
  final String name;
  final String region;

  /// List of security groups associated with the VPC Link.
  final List<String> securityGroupIds;

  /// List of subnets attached to the VPC Link.
  final List<String> subnetIds;

  /// VPC Link Tags.
  final Map<String, String> tags;
  final String vpcLinkId;

  GetVpcLinkResult2({
    required this.arn,
    required this.id,
    required this.name,
    required this.region,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.tags,
    required this.vpcLinkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    map['tags'] = tags;
    map['vpcLinkId'] = vpcLinkId;
    return map;
  }

  factory GetVpcLinkResult2.fromMap(Map<String, dynamic> map) {
    return GetVpcLinkResult2(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcLinkId: map['vpcLinkId'] as String,
    );
  }
}
