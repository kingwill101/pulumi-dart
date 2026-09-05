// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVpcLink.
class GetVpcLinkResult {
  /// ARN of the VPC Link.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// VPC Link Name.
  final String? name;
  final String? region;
  /// List of security groups associated with the VPC Link.
  final List<String>? securityGroupIds;
  /// List of subnets attached to the VPC Link.
  final List<String>? subnetIds;
  /// VPC Link Tags.
  final Map<String, String>? tags;
  final String? vpcLinkId;

  /// Creates a new [GetVpcLinkResult].
  /// [arn] ARN of the VPC Link.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] VPC Link Name.
  /// [region] Optional.
  /// [securityGroupIds] List of security groups associated with the VPC Link.
  /// [subnetIds] List of subnets attached to the VPC Link.
  /// [tags] VPC Link Tags.
  /// [vpcLinkId] Optional.
  const GetVpcLinkResult({
    this.arn,
    this.id,
    this.name,
    this.region,
    this.securityGroupIds,
    this.subnetIds,
    this.tags,
    this.vpcLinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'vpcLinkId': ?vpcLinkId,
    };
  }

  factory GetVpcLinkResult.fromMap(Map<String, dynamic> map) {
    return GetVpcLinkResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcLinkId: (() { final guardedValue = map['vpcLinkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
