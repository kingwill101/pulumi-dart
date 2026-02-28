// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConfig.
class GetConfigResult {
  /// An optional description of the RuntimeConfig object.
  final String description;

  /// The resource name of a runtime config. The name must have the format: projects/[PROJECT_ID]/configs/[CONFIG_NAME] The `[PROJECT_ID]` must be a valid project ID, and `[CONFIG_NAME]` is an arbitrary name that matches the `[0-9A-Za-z](?:[_.A-Za-z0-9-]{0,62}[_.A-Za-z0-9])?` regular expression. The length of `[CONFIG_NAME]` must be less than 64 characters. You pick the RuntimeConfig resource name, but the server will validate that the name adheres to this format. After you create the resource, you cannot change the resource's name.
  final String name;

  /// Creates a new [GetConfigResult].
  /// [description] An optional description of the RuntimeConfig object.
  /// [name] The resource name of a runtime config. The name must have the format: projects/[PROJECT_ID]/configs/[CONFIG_NAME] The `[PROJECT_ID]` must be a valid project ID, and `[CONFIG_NAME]` is an arbitrary name that matches the `[0-9A-Za-z](?:[_.A-Za-z0-9-]{0,62}[_.A-Za-z0-9])?` regular expression. The length of `[CONFIG_NAME]` must be less than 64 characters. You pick the RuntimeConfig resource name, but the server will validate that the name adheres to this format. After you create the resource, you cannot change the resource's name.
  GetConfigResult({
    required this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['name'] = name;
    return map;
  }

  factory GetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetConfigResult(
      description: map['description'] as String,
      name: map['name'] as String,
    );
  }
}
