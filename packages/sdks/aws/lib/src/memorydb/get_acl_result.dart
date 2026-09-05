// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAcl.
class GetAclResult {
  /// ARN of the ACL.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The minimum engine version supported by the ACL.
  final String? minimumEngineVersion;
  final String? name;
  final String? region;
  /// Map of tags assigned to the ACL.
  final Map<String, String>? tags;
  /// Set of MemoryDB user names included in this ACL.
  final List<String>? userNames;

  /// Creates a new [GetAclResult].
  /// [arn] ARN of the ACL.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minimumEngineVersion] The minimum engine version supported by the ACL.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] Map of tags assigned to the ACL.
  /// [userNames] Set of MemoryDB user names included in this ACL.
  const GetAclResult({
    this.arn,
    this.id,
    this.minimumEngineVersion,
    this.name,
    this.region,
    this.tags,
    this.userNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'minimumEngineVersion': ?minimumEngineVersion,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'userNames': ?userNames,
    };
  }

  factory GetAclResult.fromMap(Map<String, dynamic> map) {
    return GetAclResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minimumEngineVersion: (() { final guardedValue = map['minimumEngineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      userNames: (() { final guardedValue = map['userNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
