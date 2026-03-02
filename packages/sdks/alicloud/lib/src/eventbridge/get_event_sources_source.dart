// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEventSourcesSource {
  /// The detail describe of event source.
  final pulumi.Input<String> description;
  /// The code name of event source.
  final pulumi.Input<String> eventSourceName;
  /// The config of external data source.
  final pulumi.Input<Map<String, String>> externalSourceConfig;
  /// The type of external data source.
  final pulumi.Input<String> externalSourceType;
  /// The ID of the Event Source.
  final pulumi.Input<String> id;
  /// Whether to connect to an external data source.
  final pulumi.Input<bool> linkedExternalSource;
  final pulumi.Input<String> type;

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
      description: (map['description'] as String).input(),
      eventSourceName: (map['eventSourceName'] as String).input(),
      externalSourceConfig: ((map['externalSourceConfig'] as Map).cast<String, String>()).input(),
      externalSourceType: (map['externalSourceType'] as String).input(),
      id: (map['id'] as String).input(),
      linkedExternalSource: (map['linkedExternalSource'] as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

