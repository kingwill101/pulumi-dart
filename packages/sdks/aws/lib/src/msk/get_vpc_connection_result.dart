// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVpcConnection.
class GetVpcConnectionResult {
  final String? arn;
  /// The authentication type for the client VPC Connection.
  final String? authentication;
  /// The list of subnets in the client VPC.
  final List<String>? clientSubnets;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// The security groups attached to the ENIs for the broker nodes.
  final List<String>? securityGroups;
  /// Map of key-value pairs assigned to the VPC Connection.
  final Map<String, String>? tags;
  /// ARN of the cluster.
  final String? targetClusterArn;
  /// The VPC ID of the remote client.
  final String? vpcId;

  /// Creates a new [GetVpcConnectionResult].
  /// [arn] Optional.
  /// [authentication] The authentication type for the client VPC Connection.
  /// [clientSubnets] The list of subnets in the client VPC.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [securityGroups] The security groups attached to the ENIs for the broker nodes.
  /// [tags] Map of key-value pairs assigned to the VPC Connection.
  /// [targetClusterArn] ARN of the cluster.
  /// [vpcId] The VPC ID of the remote client.
  const GetVpcConnectionResult({
    this.arn,
    this.authentication,
    this.clientSubnets,
    this.id,
    this.region,
    this.securityGroups,
    this.tags,
    this.targetClusterArn,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authentication': ?authentication,
      'clientSubnets': ?clientSubnets,
      'id': ?id,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'tags': ?tags,
      'targetClusterArn': ?targetClusterArn,
      'vpcId': ?vpcId,
    };
  }

  factory GetVpcConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetVpcConnectionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientSubnets: (() { final guardedValue = map['clientSubnets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetClusterArn: (() { final guardedValue = map['targetClusterArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
