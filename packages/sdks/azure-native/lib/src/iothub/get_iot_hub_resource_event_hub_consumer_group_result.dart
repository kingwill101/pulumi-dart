// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIotHubResourceEventHubConsumerGroup.
class GetIotHubResourceEventHubConsumerGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The etag.
  final String? etag;
  /// The Event Hub-compatible consumer group identifier.
  final String? id;
  /// The Event Hub-compatible consumer group name.
  final String? name;
  /// The tags.
  final dynamic properties;
  /// the resource type.
  final String? type;

  /// Creates a new [GetIotHubResourceEventHubConsumerGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The etag.
  /// [id] The Event Hub-compatible consumer group identifier.
  /// [name] The Event Hub-compatible consumer group name.
  /// [properties] The tags.
  /// [type] the resource type.
  const GetIotHubResourceEventHubConsumerGroupResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'properties': ?properties,
      'type': ?type,
    };
  }

  factory GetIotHubResourceEventHubConsumerGroupResult.fromMap(Map<String, dynamic> map) {
    return GetIotHubResourceEventHubConsumerGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return guardedValue; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
