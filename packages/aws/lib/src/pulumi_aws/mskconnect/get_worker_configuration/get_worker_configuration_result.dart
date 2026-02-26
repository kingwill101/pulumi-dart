// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkerConfiguration.
class GetWorkerConfigurationResult {
  /// the ARN of the worker configuration.
  final String arn;

  /// a summary description of the worker configuration.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// an ID of the latest successfully created revision of the worker configuration.
  final int latestRevision;
  final String name;

  /// contents of connect-distributed.properties file.
  final String propertiesFileContent;
  final String region;

  /// A map of tags assigned to the resource.
  final Map<String, String> tags;

  GetWorkerConfigurationResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.latestRevision,
    required this.name,
    required this.propertiesFileContent,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['id'] = id;
    map['latestRevision'] = latestRevision;
    map['name'] = name;
    map['propertiesFileContent'] = propertiesFileContent;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetWorkerConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetWorkerConfigurationResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      latestRevision: map['latestRevision'] as int,
      name: map['name'] as String,
      propertiesFileContent: map['propertiesFileContent'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
