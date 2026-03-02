// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_data_point_response.dart';
import 'topic_response.dart';

/// Defines the dataset properties.
class DiscoveredDatasetResponse {
  /// Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  final pulumi.Input<List<DiscoveredDataPointResponse>>? dataPoints;
  /// Stringified JSON that contains connector-specific properties that describes configuration for the specific dataset.
  final pulumi.Input<String>? datasetConfiguration;
  /// Name of the dataset.
  final pulumi.Input<String> name;
  /// Object that describes the topic information for the specific dataset.
  final pulumi.Input<TopicResponse>? topic;

  /// Creates a new [DiscoveredDatasetResponse].
  /// [dataPoints] Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  /// [datasetConfiguration] Stringified JSON that contains connector-specific properties that describes configuration for the specific dataset.
  /// [name] Name of the dataset.
  /// [topic] Object that describes the topic information for the specific dataset.
  DiscoveredDatasetResponse({
    this.dataPoints,
    this.datasetConfiguration,
    required this.name,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<DiscoveredDataPointResponse>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<DiscoveredDataPointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datasetConfiguration': ?datasetConfiguration,
      'name': name,
      'topic': ?pulumi.Input.mapOptionalInputValue<TopicResponse, Map<String, dynamic>>(topic, (value) => value.toMap()),
    };
  }

  factory DiscoveredDatasetResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveredDatasetResponse(
      dataPoints: map['dataPoints'] == null ? null : (pulumi.Input.decodeList<DiscoveredDataPointResponse>(map['dataPoints']!, (value) => DiscoveredDataPointResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      datasetConfiguration: map['datasetConfiguration'] == null ? null : (map['datasetConfiguration']! as String).input(),
      name: (map['name'] as String).input(),
      topic: map['topic'] == null ? null : (TopicResponse.fromMap((map['topic']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

