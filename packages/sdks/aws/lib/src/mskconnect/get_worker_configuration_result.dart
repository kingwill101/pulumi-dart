// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkerConfiguration.
class GetWorkerConfigurationResult {
  /// the ARN of the worker configuration.
  final String? arn;
  /// a summary description of the worker configuration.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// an ID of the latest successfully created revision of the worker configuration.
  final int? latestRevision;
  final String? name;
  /// contents of connect-distributed.properties file.
  final String? propertiesFileContent;
  final String? region;
  /// A map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetWorkerConfigurationResult].
  /// [arn] the ARN of the worker configuration.
  /// [description] a summary description of the worker configuration.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [latestRevision] an ID of the latest successfully created revision of the worker configuration.
  /// [name] Optional.
  /// [propertiesFileContent] contents of connect-distributed.properties file.
  /// [region] Optional.
  /// [tags] A map of tags assigned to the resource.
  const GetWorkerConfigurationResult({
    this.arn,
    this.description,
    this.id,
    this.latestRevision,
    this.name,
    this.propertiesFileContent,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'latestRevision': ?latestRevision,
      'name': ?name,
      'propertiesFileContent': ?propertiesFileContent,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetWorkerConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetWorkerConfigurationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestRevision: (() { final guardedValue = map['latestRevision']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      propertiesFileContent: (() { final guardedValue = map['propertiesFileContent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
