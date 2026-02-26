// ignore_for_file: unused_element, unnecessary_cast

class PipelineVpcOptions {
  /// A list of security groups associated with the VPC endpoint.
  final List<String>? securityGroupIds;

  /// A list of subnet IDs associated with the VPC endpoint.
  final List<String> subnetIds;

  /// Whether you or Amazon OpenSearch Ingestion service create and manage the VPC endpoint configured for the pipeline. Valid values are `CUSTOMER` or `SERVICE`
  final String? vpcEndpointManagement;

  PipelineVpcOptions({
    this.securityGroupIds,
    required this.subnetIds,
    this.vpcEndpointManagement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['subnetIds'] = subnetIds;
    final vpcEndpointManagementValue = vpcEndpointManagement;
    if (vpcEndpointManagementValue != null) {
      map['vpcEndpointManagement'] = vpcEndpointManagementValue;
    }
    return map;
  }

  factory PipelineVpcOptions.fromMap(Map<String, dynamic> map) {
    return PipelineVpcOptions(
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcEndpointManagement: map['vpcEndpointManagement'] == null
          ? null
          : map['vpcEndpointManagement'] as String,
    );
  }
}
