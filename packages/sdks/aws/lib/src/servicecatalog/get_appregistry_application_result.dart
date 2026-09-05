// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAppregistryApplication.
class GetAppregistryApplicationResult {
  /// A map with a single tag key-value pair used to associate resources with the application.
  final Map<String, String>? applicationTag;
  /// ARN of the application.
  final String? arn;
  /// Description of the application.
  final String? description;
  final String? id;
  /// Name of the application.
  final String? name;
  final String? region;
  /// A map of tags assigned to the Application. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  /// Creates a new [GetAppregistryApplicationResult].
  /// [applicationTag] A map with a single tag key-value pair used to associate resources with the application.
  /// [arn] ARN of the application.
  /// [description] Description of the application.
  /// [id] Optional.
  /// [name] Name of the application.
  /// [region] Optional.
  /// [tags] A map of tags assigned to the Application. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const GetAppregistryApplicationResult({
    this.applicationTag,
    this.arn,
    this.description,
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTag': ?applicationTag,
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetAppregistryApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetAppregistryApplicationResult(
      applicationTag: (() { final guardedValue = map['applicationTag']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
