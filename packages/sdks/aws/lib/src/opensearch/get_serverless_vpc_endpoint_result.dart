// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerlessVpcEndpoint.
class GetServerlessVpcEndpointResult {
  /// The date the endpoint was created.
  final String? createdDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The name of the endpoint.
  final String? name;
  final String? region;
  /// The IDs of the security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  final List<String>? securityGroupIds;
  /// The IDs of the subnets from which you access OpenSearch Serverless.
  final List<String>? subnetIds;
  final String? vpcEndpointId;
  /// The ID of the VPC from which you access OpenSearch Serverless.
  final String? vpcId;

  /// Creates a new [GetServerlessVpcEndpointResult].
  /// [createdDate] The date the endpoint was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the endpoint.
  /// [region] Optional.
  /// [securityGroupIds] The IDs of the security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  /// [subnetIds] The IDs of the subnets from which you access OpenSearch Serverless.
  /// [vpcEndpointId] Optional.
  /// [vpcId] The ID of the VPC from which you access OpenSearch Serverless.
  const GetServerlessVpcEndpointResult({
    this.createdDate,
    this.id,
    this.name,
    this.region,
    this.securityGroupIds,
    this.subnetIds,
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': ?createdDate,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcId': ?vpcId,
    };
  }

  factory GetServerlessVpcEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessVpcEndpointResult(
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
