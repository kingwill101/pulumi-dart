// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConnector.
class GetConnectorResult {
  /// ARN of the connector.
  final String? arn;
  /// Summary description of the connector.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// A map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// Current version of the connector.
  final String? version;

  /// Creates a new [GetConnectorResult].
  /// [arn] ARN of the connector.
  /// [description] Summary description of the connector.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] A map of tags assigned to the resource.
  /// [version] Current version of the connector.
  const GetConnectorResult({
    this.arn,
    this.description,
    this.id,
    this.name,
    this.region,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
