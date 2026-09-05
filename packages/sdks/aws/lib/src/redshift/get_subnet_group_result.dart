// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubnetGroup.
class GetSubnetGroupResult {
  /// ARN of the Redshift Subnet Group name.
  final String? arn;
  /// Description of the Redshift Subnet group.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// An array of VPC subnet IDs.
  final List<String>? subnetIds;
  /// Tags associated to the Subnet Group
  final Map<String, String>? tags;

  /// Creates a new [GetSubnetGroupResult].
  /// [arn] ARN of the Redshift Subnet Group name.
  /// [description] Description of the Redshift Subnet group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [subnetIds] An array of VPC subnet IDs.
  /// [tags] Tags associated to the Subnet Group
  const GetSubnetGroupResult({
    this.arn,
    this.description,
    this.id,
    this.name,
    this.region,
    this.subnetIds,
    this.tags,
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
    );
  }
}
