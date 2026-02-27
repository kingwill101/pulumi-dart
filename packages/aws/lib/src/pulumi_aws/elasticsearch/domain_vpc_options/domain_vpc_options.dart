// ignore_for_file: unused_element, unnecessary_cast

class DomainVpcOptions {
  /// If the domain was created inside a VPC, the names of the availability zones the configured `subnet_ids` were created inside.
  final List<String>? availabilityZones;

  /// List of VPC Security Group IDs to be applied to the Elasticsearch domain endpoints. If omitted, the default Security Group for the VPC will be used.
  final List<String>? securityGroupIds;

  /// List of VPC Subnet IDs for the Elasticsearch domain endpoints to be created in.
  final List<String>? subnetIds;

  /// If the domain was created inside a VPC, the ID of the VPC.
  final String? vpcId;

  DomainVpcOptions({
    this.availabilityZones,
    this.securityGroupIds,
    this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZonesValue = availabilityZones;
    if (availabilityZonesValue != null) {
      map['availabilityZones'] = availabilityZonesValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory DomainVpcOptions.fromMap(Map<String, dynamic> map) {
    return DomainVpcOptions(
      availabilityZones: map['availabilityZones'] == null
          ? null
          : (map['availabilityZones'] as List).cast<String>(),
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
