// ignore_for_file: unused_element, unnecessary_cast


class GetEventSourcesSource {
  /// The detail describe of event source.
  final String description;
  /// The code name of event source.
  final String eventSourceName;
  /// The config of external data source.
  final Map<String, String> externalSourceConfig;
  /// The type of external data source.
  final String externalSourceType;
  /// The ID of the Event Source.
  final String id;
  /// Whether to connect to an external data source.
  final bool linkedExternalSource;
  final String type;

  /// Creates a new [GetEventSourcesSource].
  /// [description] The detail describe of event source.
  /// [eventSourceName] The code name of event source.
  /// [externalSourceConfig] The config of external data source.
  /// [externalSourceType] The type of external data source.
  /// [id] The ID of the Event Source.
  /// [linkedExternalSource] Whether to connect to an external data source.
  /// [type] Required.
  GetEventSourcesSource({
    required this.description,
    required this.eventSourceName,
    required this.externalSourceConfig,
    required this.externalSourceType,
    required this.id,
    required this.linkedExternalSource,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'eventSourceName': eventSourceName,
      'externalSourceConfig': externalSourceConfig,
      'externalSourceType': externalSourceType,
      'id': id,
      'linkedExternalSource': linkedExternalSource,
      'type': type,
    };
  }

  factory GetEventSourcesSource.fromMap(Map<String, dynamic> map) {
    return GetEventSourcesSource(
      description: map['description'] as String,
      eventSourceName: map['eventSourceName'] as String,
      externalSourceConfig: (map['externalSourceConfig'] as Map).cast<String, String>(),
      externalSourceType: map['externalSourceType'] as String,
      id: map['id'] as String,
      linkedExternalSource: map['linkedExternalSource'] as bool,
      type: map['type'] as String,
    );
  }
}

