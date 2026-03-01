// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubnetGroup.
class GetSubnetGroupResult {
  /// ARN for the DB subnet group.
  final String arn;
  /// Provides the description of the DB subnet group.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  /// Provides the status of the DB subnet group.
  final String status;
  /// Contains a list of subnet identifiers.
  final List<String> subnetIds;
  /// The network type of the DB subnet group.
  final List<String> supportedNetworkTypes;
  /// Provides the VPC ID of the DB subnet group.
  final String vpcId;

  /// Creates a new [GetSubnetGroupResult].
  /// [arn] ARN for the DB subnet group.
  /// [description] Provides the description of the DB subnet group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [status] Provides the status of the DB subnet group.
  /// [subnetIds] Contains a list of subnet identifiers.
  /// [supportedNetworkTypes] The network type of the DB subnet group.
  /// [vpcId] Provides the VPC ID of the DB subnet group.
  GetSubnetGroupResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.status,
    required this.subnetIds,
    required this.supportedNetworkTypes,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'id': id,
      'name': name,
      'region': region,
      'status': status,
      'subnetIds': subnetIds,
      'supportedNetworkTypes': supportedNetworkTypes,
      'vpcId': vpcId,
    };
  }

  factory GetSubnetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetGroupResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      supportedNetworkTypes: (map['supportedNetworkTypes'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

