// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_data_point.dart';
import 'topic.dart';

/// Defines the dataset properties.
class DiscoveredDataset {
  /// Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  final List<DiscoveredDataPoint>? dataPoints;
  /// Stringified JSON that contains connector-specific properties that describes configuration for the specific dataset.
  final String? datasetConfiguration;
  /// Name of the dataset.
  final String name;
  /// Object that describes the topic information for the specific dataset.
  final Topic? topic;

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
      'dataPoints': ?dataPoints == null ? null : pulumi.Input.encodeList<DiscoveredDataPoint, Map<String, dynamic>>(dataPoints!, (value) => value.toMap()),
      'datasetConfiguration': ?datasetConfiguration,
      'name': name,
      'topic': ?topic == null ? null : topic!.toMap(),
    };
  }

  factory DiscoveredDataset.fromMap(Map<String, dynamic> map) {
    return DiscoveredDataset(
      dataPoints: map['dataPoints'] == null ? null : pulumi.Input.decodeList<DiscoveredDataPoint>(map['dataPoints'], (value) => DiscoveredDataPoint.fromMap((value as Map).cast<String, dynamic>())),
      datasetConfiguration: map['datasetConfiguration'] == null ? null : map['datasetConfiguration'] as String,
      name: map['name'] as String,
      topic: map['topic'] == null ? null : Topic.fromMap((map['topic'] as Map).cast<String, dynamic>()),
    );
  }
}

