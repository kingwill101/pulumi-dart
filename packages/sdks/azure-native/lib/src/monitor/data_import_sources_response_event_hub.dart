// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Event Hub configuration.
class DataImportSourcesResponseEventHub {
  /// Event Hub consumer group name
  final pulumi.Input<String>? consumerGroup;
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;
  /// The stream to collect from EventHub
  final pulumi.Input<String>? stream;

  /// Creates a new [DataImportSourcesResponseEventHub].
  /// [consumerGroup] Event Hub consumer group name
  /// [name] A friendly name for the data source.
  /// [stream] The stream to collect from EventHub
  const DataImportSourcesResponseEventHub({
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

  factory DataImportSourcesResponseEventHub.fromMap(Map<String, dynamic> map) {
    return DataImportSourcesResponseEventHub(
      consumerGroup: (() { final guardedValue = map['consumerGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stream: (() { final guardedValue = map['stream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

