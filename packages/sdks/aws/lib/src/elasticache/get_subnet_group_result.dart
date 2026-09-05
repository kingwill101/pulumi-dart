// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubnetGroup.
class GetSubnetGroupResult {
  /// ARN of the subnet group.
  final String? arn;
  /// Description of the subnet group.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Set of VPC Subnet ID-s of the subnet group.
  final List<String>? subnetIds;
  /// Map of tags assigned to the subnet group.
  final Map<String, String>? tags;
  /// VPC identifier (VPC ID) of the cache subnet group.
  final String? vpcId;

  /// Creates a new [GetSubnetGroupResult].
  /// [arn] ARN of the subnet group.
  /// [description] Description of the subnet group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [subnetIds] Set of VPC Subnet ID-s of the subnet group.
  /// [tags] Map of tags assigned to the subnet group.
  /// [vpcId] VPC identifier (VPC ID) of the cache subnet group.
  const GetSubnetGroupResult({
    this.arn,
    this.description,
    this.id,
    this.name,
    this.region,
    this.subnetIds,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetSubnetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
