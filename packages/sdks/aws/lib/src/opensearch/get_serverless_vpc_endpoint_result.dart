// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerlessVpcEndpoint.
class GetServerlessVpcEndpointResult {
  /// The date the endpoint was created.
  final String createdDate;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of the endpoint.
  final String name;
  final String region;
  /// The IDs of the security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  final List<String> securityGroupIds;
  /// The IDs of the subnets from which you access OpenSearch Serverless.
  final List<String> subnetIds;
  final String vpcEndpointId;
  /// The ID of the VPC from which you access OpenSearch Serverless.
  final String vpcId;

  /// Creates a new [GetServerlessVpcEndpointResult].
  /// [createdDate] The date the endpoint was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the endpoint.
  /// [region] Required.
  /// [securityGroupIds] The IDs of the security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  /// [subnetIds] The IDs of the subnets from which you access OpenSearch Serverless.
  /// [vpcEndpointId] Required.
  /// [vpcId] The ID of the VPC from which you access OpenSearch Serverless.
  GetServerlessVpcEndpointResult({
    required this.createdDate,
    required this.id,
    required this.name,
    required this.region,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.vpcEndpointId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': createdDate,
      'id': id,
      'name': name,
      'region': region,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'vpcEndpointId': vpcEndpointId,
      'vpcId': vpcId,
    };
  }

  factory GetServerlessVpcEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessVpcEndpointResult(
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcEndpointId: map['vpcEndpointId'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

