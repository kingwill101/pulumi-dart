// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAcl.
class GetAclResult {
  /// ARN of the ACL.
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The minimum engine version supported by the ACL.
  final String minimumEngineVersion;
  final String name;
  final String region;
  /// Map of tags assigned to the ACL.
  final Map<String, String> tags;
  /// Set of MemoryDB user names included in this ACL.
  final List<String> userNames;

  /// Creates a new [GetAclResult].
  /// [arn] ARN of the ACL.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minimumEngineVersion] The minimum engine version supported by the ACL.
  /// [name] Required.
  /// [region] Required.
  /// [tags] Map of tags assigned to the ACL.
  /// [userNames] Set of MemoryDB user names included in this ACL.
  const GetAclResult({
    required this.arn,
    required this.id,
    required this.minimumEngineVersion,
    required this.name,
    required this.region,
    required this.tags,
    required this.userNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'minimumEngineVersion': minimumEngineVersion,
      'name': name,
      'region': region,
      'tags': tags,
      'userNames': userNames,
    };
  }

  factory GetAclResult.fromMap(Map<String, dynamic> map) {
    return GetAclResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      minimumEngineVersion: map['minimumEngineVersion'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userNames: (map['userNames'] as List).cast<String>(),
    );
  }
}

