// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_data_point.dart';
import 'topic.dart';

/// Defines the dataset properties.
class DiscoveredDataset {
  /// Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  final pulumi.Input<List<DiscoveredDataPoint>>? dataPoints;
  /// Stringified JSON that contains connector-specific properties that describes configuration for the specific dataset.
  final pulumi.Input<String>? datasetConfiguration;
  /// Name of the dataset.
  final pulumi.Input<String> name;
  /// Object that describes the topic information for the specific dataset.
  final pulumi.Input<Topic>? topic;

  /// Creates a new [DiscoveredDataset].
  /// [dataPoints] Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  /// [datasetConfiguration] Stringified JSON that contains connector-specific properties that describes configuration for the specific dataset.
  /// [name] Name of the dataset.
  /// [topic] Object that describes the topic information for the specific dataset.
  DiscoveredDataset({
    this.dataPoints,
    this.datasetConfiguration,
    required this.name,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<DiscoveredDataPoint>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<DiscoveredDataPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datasetConfiguration': ?datasetConfiguration,
      'name': name,
      'topic': ?pulumi.Input.mapOptionalInputValue<Topic, Map<String, dynamic>>(topic, (value) => value.toMap()),
    };
  }

  factory DiscoveredDataset.fromMap(Map<String, dynamic> map) {
    return DiscoveredDataset(
      dataPoints: (() { final guardedValue = map['dataPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiscoveredDataPoint>(guardedValue, (value) => DiscoveredDataPoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      datasetConfiguration: (() { final guardedValue = map['datasetConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Topic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

