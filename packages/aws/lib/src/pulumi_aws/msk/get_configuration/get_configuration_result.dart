// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConfiguration.
class GetConfigurationResult {
  /// ARN of the configuration.
  final String arn;

  /// Description of the configuration.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of Apache Kafka versions which can use this configuration.
  final List<String> kafkaVersions;

  /// Latest revision of the configuration.
  final int latestRevision;
  final String name;
  final String region;

  /// Contents of the server.properties file.
  final String serverProperties;

  GetConfigurationResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.kafkaVersions,
    required this.latestRevision,
    required this.name,
    required this.region,
    required this.serverProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['id'] = id;
    map['kafkaVersions'] = kafkaVersions;
    map['latestRevision'] = latestRevision;
    map['name'] = name;
    map['region'] = region;
    map['serverProperties'] = serverProperties;
    return map;
  }

  factory GetConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      kafkaVersions: (map['kafkaVersions'] as List).cast<String>(),
      latestRevision: map['latestRevision'] as int,
      name: map['name'] as String,
      region: map['region'] as String,
      serverProperties: map['serverProperties'] as String,
    );
  }
}
