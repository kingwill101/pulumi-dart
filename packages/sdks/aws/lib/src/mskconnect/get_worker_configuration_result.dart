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

  /// Creates a new [GetWorkerConfigurationResult].
  /// [arn] the ARN of the worker configuration.
  /// [description] a summary description of the worker configuration.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [latestRevision] an ID of the latest successfully created revision of the worker configuration.
  /// [name] Required.
  /// [propertiesFileContent] contents of connect-distributed.properties file.
  /// [region] Required.
  /// [tags] A map of tags assigned to the resource.
  const GetWorkerConfigurationResult({
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
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'id': id,
      'latestRevision': latestRevision,
      'name': name,
      'propertiesFileContent': propertiesFileContent,
      'region': region,
      'tags': tags,
    };
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

