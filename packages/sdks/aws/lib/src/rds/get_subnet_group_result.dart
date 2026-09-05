// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubnetGroup.
class GetSubnetGroupResult {
  /// ARN for the DB subnet group.
  final String? arn;
  /// Provides the description of the DB subnet group.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Provides the status of the DB subnet group.
  final String? status;
  /// Contains a list of subnet identifiers.
  final List<String>? subnetIds;
  /// The network type of the DB subnet group.
  final List<String>? supportedNetworkTypes;
  /// Provides the VPC ID of the DB subnet group.
  final String? vpcId;

  /// Creates a new [GetSubnetGroupResult].
  /// [arn] ARN for the DB subnet group.
  /// [description] Provides the description of the DB subnet group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [status] Provides the status of the DB subnet group.
  /// [subnetIds] Contains a list of subnet identifiers.
  /// [supportedNetworkTypes] The network type of the DB subnet group.
  /// [vpcId] Provides the VPC ID of the DB subnet group.
  const GetSubnetGroupResult({
    this.arn,
    this.description,
    this.id,
    this.name,
    this.region,
    this.status,
    this.subnetIds,
    this.supportedNetworkTypes,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'subnetIds': ?subnetIds,
      'supportedNetworkTypes': ?supportedNetworkTypes,
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
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportedNetworkTypes: (() { final guardedValue = map['supportedNetworkTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
