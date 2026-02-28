// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCustomPlugin.
class GetCustomPluginResult {
  /// the ARN of the custom plugin.
  final String arn;

  /// a summary description of the custom plugin.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// an ID of the latest successfully created revision of the custom plugin.
  final int latestRevision;
  final String name;
  final String region;

  /// the state of the custom plugin.
  final String state;

  /// A map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetCustomPluginResult].
  /// [arn] the ARN of the custom plugin.
  /// [description] a summary description of the custom plugin.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [latestRevision] an ID of the latest successfully created revision of the custom plugin.
  /// [name] Required.
  /// [region] Required.
  /// [state] the state of the custom plugin.
  /// [tags] A map of tags assigned to the resource.
  GetCustomPluginResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.latestRevision,
    required this.name,
    required this.region,
    required this.state,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['id'] = id;
    map['latestRevision'] = latestRevision;
    map['name'] = name;
    map['region'] = region;
    map['state'] = state;
    map['tags'] = tags;
    return map;
  }

  factory GetCustomPluginResult.fromMap(Map<String, dynamic> map) {
    return GetCustomPluginResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      latestRevision: map['latestRevision'] as int,
      name: map['name'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
