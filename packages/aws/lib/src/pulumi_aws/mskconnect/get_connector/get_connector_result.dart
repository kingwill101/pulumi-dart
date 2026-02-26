// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConnector.
class GetConnectorResult {
  /// ARN of the connector.
  final String arn;

  /// Summary description of the connector.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// A map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Current version of the connector.
  final String version;

  GetConnectorResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['tags'] = tags;
    map['version'] = version;
    return map;
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
    );
  }
}
