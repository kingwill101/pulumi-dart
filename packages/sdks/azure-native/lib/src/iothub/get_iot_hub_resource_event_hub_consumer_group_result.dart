// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIotHubResourceEventHubConsumerGroup.
class GetIotHubResourceEventHubConsumerGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The etag.
  final String etag;
  /// The Event Hub-compatible consumer group identifier.
  final String id;
  /// The Event Hub-compatible consumer group name.
  final String name;
  /// The tags.
  final dynamic properties;
  /// the resource type.
  final String type;

  /// Creates a new [GetIotHubResourceEventHubConsumerGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The etag.
  /// [id] The Event Hub-compatible consumer group identifier.
  /// [name] The Event Hub-compatible consumer group name.
  /// [properties] The tags.
  /// [type] the resource type.
  const GetIotHubResourceEventHubConsumerGroupResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'name': name,
      'properties': properties,
      'type': type,
    };
  }

  factory GetIotHubResourceEventHubConsumerGroupResult.fromMap(Map<String, dynamic> map) {
    return GetIotHubResourceEventHubConsumerGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: map['properties'],
      type: map['type'] as String,
    );
  }
}
