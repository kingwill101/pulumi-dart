// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSecurityProfile.
class GetSecurityProfileResult {
  /// ARN of the Security Profile.
  final String arn;

  /// Description of the Security Profile.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String name;

  /// The organization resource identifier for the security profile.
  final String organizationResourceId;

  /// List of permissions assigned to the security profile.
  final List<String> permissions;
  final String region;
  final String securityProfileId;

  /// Map of tags to assign to the Security Profile.
  final Map<String, String> tags;

  /// Creates a new [GetSecurityProfileResult].
  /// [arn] ARN of the Security Profile.
  /// [description] Description of the Security Profile.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [name] Required.
  /// [organizationResourceId] The organization resource identifier for the security profile.
  /// [permissions] List of permissions assigned to the security profile.
  /// [region] Required.
  /// [securityProfileId] Required.
  /// [tags] Map of tags to assign to the Security Profile.
  GetSecurityProfileResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.instanceId,
    required this.name,
    required this.organizationResourceId,
    required this.permissions,
    required this.region,
    required this.securityProfileId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['name'] = name;
    map['organizationResourceId'] = organizationResourceId;
    map['permissions'] = permissions;
    map['region'] = region;
    map['securityProfileId'] = securityProfileId;
    map['tags'] = tags;
    return map;
  }

  factory GetSecurityProfileResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] as String,
      organizationResourceId: map['organizationResourceId'] as String,
      permissions: (map['permissions'] as List).cast<String>(),
      region: map['region'] as String,
      securityProfileId: map['securityProfileId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
