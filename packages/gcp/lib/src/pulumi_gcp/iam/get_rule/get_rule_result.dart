// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRule.
class GetRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// specifies the list of one or more permissions to include in the custom role, such as - `iam.roles.get`
  final List<String> includedPermissions;
  final String name;

  /// indicates the stage of a role in the launch lifecycle, such as `GA`, `BETA` or `ALPHA`.
  final String stage;

  /// is a friendly title for the role, such as "Role Viewer"
  final String title;

  GetRuleResult({
    required this.id,
    required this.includedPermissions,
    required this.name,
    required this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['includedPermissions'] = includedPermissions;
    map['name'] = name;
    map['stage'] = stage;
    map['title'] = title;
    return map;
  }

  factory GetRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRuleResult(
      id: map['id'] as String,
      includedPermissions: (map['includedPermissions'] as List).cast<String>(),
      name: map['name'] as String,
      stage: map['stage'] as String,
      title: map['title'] as String,
    );
  }
}
