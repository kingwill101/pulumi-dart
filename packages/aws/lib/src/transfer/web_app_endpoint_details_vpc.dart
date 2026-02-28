// ignore_for_file: unused_element, unnecessary_cast

class WebAppEndpointDetailsVpc {
  /// List of security group IDs that control access to the web app endpoint. If not specified, the VPC's default security group is used.
  final List<String>? securityGroupIds;

  /// List of subnet IDs within the VPC where the web app endpoint will be deployed. These subnets must be in the same VPC specified in the `vpc_id` parameter.
  final List<String> subnetIds;

  /// ID of the VPC endpoint created for the web app.
  final String? vpcEndpointId;

  /// ID of the VPC where the web app endpoint will be hosted. The VPC must be dual-stack, meaning it supports both IPv4 and IPv6 addressing.
  final String vpcId;

  /// Creates a new [WebAppEndpointDetailsVpc].
  /// [securityGroupIds] List of security group IDs that control access to the web app endpoint. If not specified, the VPC's default security group is used.
  /// [subnetIds] List of subnet IDs within the VPC where the web app endpoint will be deployed. These subnets must be in the same VPC specified in the `vpc_id` parameter.
  /// [vpcEndpointId] ID of the VPC endpoint created for the web app.
  /// [vpcId] ID of the VPC where the web app endpoint will be hosted. The VPC must be dual-stack, meaning it supports both IPv4 and IPv6 addressing.
  WebAppEndpointDetailsVpc({
    this.securityGroupIds,
    required this.subnetIds,
    this.vpcEndpointId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['subnetIds'] = subnetIds;
    final vpcEndpointIdValue = vpcEndpointId;
    if (vpcEndpointIdValue != null) {
      map['vpcEndpointId'] = vpcEndpointIdValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory WebAppEndpointDetailsVpc.fromMap(Map<String, dynamic> map) {
    return WebAppEndpointDetailsVpc(
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcEndpointId:
          map['vpcEndpointId'] == null ? null : map['vpcEndpointId'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
