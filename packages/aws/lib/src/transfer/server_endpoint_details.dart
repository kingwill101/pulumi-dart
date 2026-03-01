// ignore_for_file: unused_element, unnecessary_cast

class ServerEndpointDetails {
  /// A list of address allocation IDs that are required to attach an Elastic IP address to your SFTP server's endpoint. This property can only be used when `endpoint_type` is set to `VPC`.
  final List<String>? addressAllocationIds;

  /// A list of security groups IDs that are available to attach to your server's endpoint. If no security groups are specified, the VPC's default security groups are automatically assigned to your endpoint. This property can only be used when `endpoint_type` is set to `VPC`.
  final List<String>? securityGroupIds;

  /// A list of subnet IDs that are required to host your SFTP server endpoint in your VPC. This property can only be used when `endpoint_type` is set to `VPC`.
  final List<String>? subnetIds;

  /// The ID of the VPC endpoint. This property can only be used when `endpoint_type` is set to `VPC_ENDPOINT`
  final String? vpcEndpointId;

  /// The VPC ID of the virtual private cloud in which the SFTP server's endpoint will be hosted. This property can only be used when `endpoint_type` is set to `VPC`.
  final String? vpcId;

  /// Creates a new [ServerEndpointDetails].
  /// [addressAllocationIds] A list of address allocation IDs that are required to attach an Elastic IP address to your SFTP server's endpoint. This property can only be used when `endpoint_type` is set to `VPC`.
  /// [securityGroupIds] A list of security groups IDs that are available to attach to your server's endpoint. If no security groups are specified, the VPC's default security groups are automatically assigned to your endpoint. This property can only be used when `endpoint_type` is set to `VPC`.
  /// [subnetIds] A list of subnet IDs that are required to host your SFTP server endpoint in your VPC. This property can only be used when `endpoint_type` is set to `VPC`.
  /// [vpcEndpointId] The ID of the VPC endpoint. This property can only be used when `endpoint_type` is set to `VPC_ENDPOINT`
  /// [vpcId] The VPC ID of the virtual private cloud in which the SFTP server's endpoint will be hosted. This property can only be used when `endpoint_type` is set to `VPC`.
  ServerEndpointDetails({
    this.addressAllocationIds,
    this.securityGroupIds,
    this.subnetIds,
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressAllocationIds': ?addressAllocationIds,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcId': ?vpcId,
    };
  }

  factory ServerEndpointDetails.fromMap(Map<String, dynamic> map) {
    return ServerEndpointDetails(
      addressAllocationIds: map['addressAllocationIds'] == null
          ? null
          : (map['addressAllocationIds'] as List).cast<String>(),
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
      vpcEndpointId: map['vpcEndpointId'] == null
          ? null
          : map['vpcEndpointId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
