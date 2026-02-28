// ignore_for_file: unused_element, unnecessary_cast

class GetTestablePermissionsPermission {
  /// Whether the corresponding API has been enabled for the resource.
  final bool apiDisabled;

  /// The level of support for custom roles. Can be one of `"NOT_SUPPORTED"`, `"SUPPORTED"`, `"TESTING"`. Default is `"SUPPORTED"`
  final String customSupportLevel;

  /// Name of the permission.
  final String name;

  /// Release stage of the permission.
  final String stage;

  /// Human readable title of the permission.
  final String title;

  /// Creates a new [GetTestablePermissionsPermission].
  /// [apiDisabled] Whether the corresponding API has been enabled for the resource.
  /// [customSupportLevel] The level of support for custom roles. Can be one of `"NOT_SUPPORTED"`, `"SUPPORTED"`, `"TESTING"`. Default is `"SUPPORTED"`
  /// [name] Name of the permission.
  /// [stage] Release stage of the permission.
  /// [title] Human readable title of the permission.
  GetTestablePermissionsPermission({
    required this.apiDisabled,
    required this.customSupportLevel,
    required this.name,
    required this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiDisabled'] = apiDisabled;
    map['customSupportLevel'] = customSupportLevel;
    map['name'] = name;
    map['stage'] = stage;
    map['title'] = title;
    return map;
  }

  factory GetTestablePermissionsPermission.fromMap(Map<String, dynamic> map) {
    return GetTestablePermissionsPermission(
      apiDisabled: map['apiDisabled'] as bool,
      customSupportLevel: map['customSupportLevel'] as String,
      name: map['name'] as String,
      stage: map['stage'] as String,
      title: map['title'] as String,
    );
  }
}
