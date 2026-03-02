// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_point_response.dart';
import 'topic_response.dart';

/// Defines the dataset properties.
class DatasetResponse {
  /// Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  final pulumi.Input<List<DataPointResponse>>? dataPoints;
  /// Stringified JSON that contains connector-specific JSON string that describes configuration for the specific dataset.
  final pulumi.Input<String>? datasetConfiguration;
  /// Name of the dataset.
  final pulumi.Input<String> name;
  /// Object that describes the topic information for the specific dataset.
  final pulumi.Input<TopicResponse>? topic;

  /// Creates a new [DatasetResponse].
  /// [dataPoints] Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  /// [datasetConfiguration] Stringified JSON that contains connector-specific JSON string that describes configuration for the specific dataset.
  /// [name] Name of the dataset.
  /// [topic] Object that describes the topic information for the specific dataset.
  DatasetResponse({
    this.dataPoints,
    this.datasetConfiguration,
    required this.name,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<DataPointResponse>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<DataPointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datasetConfiguration': ?datasetConfiguration,
      'name': name,
      'topic': ?pulumi.Input.mapOptionalInputValue<TopicResponse, Map<String, dynamic>>(topic, (value) => value.toMap()),
    };
  }

  factory DatasetResponse.fromMap(Map<String, dynamic> map) {
    return DatasetResponse(
      dataPoints: map['dataPoints'] == null ? null : (pulumi.Input.decodeList<DataPointResponse>(map['dataPoints']!, (value) => DataPointResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      datasetConfiguration: map['datasetConfiguration'] == null ? null : (map['datasetConfiguration']! as String).input(),
      name: (map['name'] as String).input(),
      topic: map['topic'] == null ? null : (TopicResponse.fromMap((map['topic']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

