// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Event Hub configuration.
class DataImportSourcesEventHub {
  /// Event Hub consumer group name
  final String? consumerGroup;
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final String? name;
  /// The stream to collect from EventHub
  final String? stream;

  /// Creates a new [DataImportSourcesEventHub].
  /// [consumerGroup] Event Hub consumer group name
  /// [name] A friendly name for the data source.
  /// [stream] The stream to collect from EventHub
  DataImportSourcesEventHub({
    this.consumerGroup,
    this.name,
    this.stream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroup': ?consumerGroup,
      'name': ?name,
      'stream': ?stream,
    };
  }

  factory DataImportSourcesEventHub.fromMap(Map<String, dynamic> map) {
    return DataImportSourcesEventHub(
      consumerGroup: map['consumerGroup'] == null ? null : map['consumerGroup'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      stream: map['stream'] == null ? null : map['stream'] as String,
    );
  }
}

