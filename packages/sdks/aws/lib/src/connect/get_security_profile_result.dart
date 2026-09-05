// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSecurityProfile.
class GetSecurityProfileResult {
  /// ARN of the Security Profile.
  final String? arn;
  /// Description of the Security Profile.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? name;
  /// The organization resource identifier for the security profile.
  final String? organizationResourceId;
  /// List of permissions assigned to the security profile.
  final List<String>? permissions;
  final String? region;
  final String? securityProfileId;
  /// Map of tags to assign to the Security Profile.
  final Map<String, String>? tags;

  /// Creates a new [GetSecurityProfileResult].
  /// [arn] ARN of the Security Profile.
  /// [description] Description of the Security Profile.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [name] Optional.
  /// [organizationResourceId] The organization resource identifier for the security profile.
  /// [permissions] List of permissions assigned to the security profile.
  /// [region] Optional.
  /// [securityProfileId] Optional.
  /// [tags] Map of tags to assign to the Security Profile.
  const GetSecurityProfileResult({
    this.arn,
    this.description,
    this.id,
    this.instanceId,
    this.name,
    this.organizationResourceId,
    this.permissions,
    this.region,
    this.securityProfileId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'instanceId': ?instanceId,
      'name': ?name,
      'organizationResourceId': ?organizationResourceId,
      'permissions': ?permissions,
      'region': ?region,
      'securityProfileId': ?securityProfileId,
      'tags': ?tags,
    };
  }

  factory GetSecurityProfileResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationResourceId: (() { final guardedValue = map['organizationResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityProfileId: (() { final guardedValue = map['securityProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
