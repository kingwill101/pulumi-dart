// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConfiguration.
class GetConfigurationResult {
  /// ARN of the configuration.
  final String? arn;
  /// Description of the configuration.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of Apache Kafka versions which can use this configuration.
  final List<String>? kafkaVersions;
  /// Latest revision of the configuration.
  final int? latestRevision;
  final String? name;
  final String? region;
  /// Contents of the server.properties file.
  final String? serverProperties;

  /// Creates a new [GetConfigurationResult].
  /// [arn] ARN of the configuration.
  /// [description] Description of the configuration.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kafkaVersions] List of Apache Kafka versions which can use this configuration.
  /// [latestRevision] Latest revision of the configuration.
  /// [name] Optional.
  /// [region] Optional.
  /// [serverProperties] Contents of the server.properties file.
  const GetConfigurationResult({
    this.arn,
    this.description,
    this.id,
    this.kafkaVersions,
    this.latestRevision,
    this.name,
    this.region,
    this.serverProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'kafkaVersions': ?kafkaVersions,
      'latestRevision': ?latestRevision,
      'name': ?name,
      'region': ?region,
      'serverProperties': ?serverProperties,
    };
  }

  factory GetConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kafkaVersions: (() { final guardedValue = map['kafkaVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      latestRevision: (() { final guardedValue = map['latestRevision']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverProperties: (() { final guardedValue = map['serverProperties']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
