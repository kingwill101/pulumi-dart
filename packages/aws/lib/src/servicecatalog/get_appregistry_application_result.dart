// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAppregistryApplication.
class GetAppregistryApplicationResult {
  /// A map with a single tag key-value pair used to associate resources with the application.
  final Map<String, String> applicationTag;

  /// ARN (Amazon Resource Name) of the application.
  final String arn;

  /// Description of the application.
  final String description;
  final String id;

  /// Name of the application.
  final String name;
  final String region;

  /// A map of tags assigned to the Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String> tags;

  /// Creates a new [GetAppregistryApplicationResult].
  /// [applicationTag] A map with a single tag key-value pair used to associate resources with the application.
  /// [arn] ARN (Amazon Resource Name) of the application.
  /// [description] Description of the application.
  /// [id] Required.
  /// [name] Name of the application.
  /// [region] Required.
  /// [tags] A map of tags assigned to the Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  GetAppregistryApplicationResult({
    required this.applicationTag,
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationTag'] = applicationTag;
    map['arn'] = arn;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetAppregistryApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetAppregistryApplicationResult(
      applicationTag: (map['applicationTag'] as Map).cast<String, String>(),
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
