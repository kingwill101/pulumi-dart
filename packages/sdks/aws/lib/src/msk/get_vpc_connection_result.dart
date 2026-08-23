// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVpcConnection.
class GetVpcConnectionResult {
  final String arn;
  /// The authentication type for the client VPC Connection.
  final String authentication;
  /// The list of subnets in the client VPC.
  final List<String> clientSubnets;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// The security groups attached to the ENIs for the broker nodes.
  final List<String> securityGroups;
  /// Map of key-value pairs assigned to the VPC Connection.
  final Map<String, String> tags;
  /// The Amazon Resource Name (ARN) of the cluster.
  final String targetClusterArn;
  /// The VPC ID of the remote client.
  final String vpcId;

  /// Creates a new [GetVpcConnectionResult].
  /// [arn] Required.
  /// [authentication] The authentication type for the client VPC Connection.
  /// [clientSubnets] The list of subnets in the client VPC.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [securityGroups] The security groups attached to the ENIs for the broker nodes.
  /// [tags] Map of key-value pairs assigned to the VPC Connection.
  /// [targetClusterArn] The Amazon Resource Name (ARN) of the cluster.
  /// [vpcId] The VPC ID of the remote client.
  const GetVpcConnectionResult({
    required this.arn,
    required this.authentication,
    required this.clientSubnets,
    required this.id,
    required this.region,
    required this.securityGroups,
    required this.tags,
    required this.targetClusterArn,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'authentication': authentication,
      'clientSubnets': clientSubnets,
      'id': id,
      'region': region,
      'securityGroups': securityGroups,
      'tags': tags,
      'targetClusterArn': targetClusterArn,
      'vpcId': vpcId,
    };
  }

  factory GetVpcConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetVpcConnectionResult(
      arn: map['arn'] as String,
      authentication: map['authentication'] as String,
      clientSubnets: (map['clientSubnets'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      targetClusterArn: map['targetClusterArn'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
