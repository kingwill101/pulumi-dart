// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_point.dart';
import 'topic.dart';

/// Defines the dataset properties.
class Dataset {
  /// Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  final List<DataPoint>? dataPoints;
  /// Stringified JSON that contains connector-specific JSON string that describes configuration for the specific dataset.
  final String? datasetConfiguration;
  /// Name of the dataset.
  final String name;
  /// Object that describes the topic information for the specific dataset.
  final Topic? topic;

  /// Creates a new [Dataset].
  /// [dataPoints] Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  /// [datasetConfiguration] Stringified JSON that contains connector-specific JSON string that describes configuration for the specific dataset.
  /// [name] Name of the dataset.
  /// [topic] Object that describes the topic information for the specific dataset.
  Dataset({
    this.dataPoints,
    this.datasetConfiguration,
    required this.name,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?dataPoints == null ? null : pulumi.Input.encodeList<DataPoint, Map<String, dynamic>>(dataPoints!, (value) => value.toMap()),
      'datasetConfiguration': ?datasetConfiguration,
      'name': name,
      'topic': ?topic == null ? null : topic!.toMap(),
    };
  }

  factory Dataset.fromMap(Map<String, dynamic> map) {
    return Dataset(
      dataPoints: map['dataPoints'] == null ? null : pulumi.Input.decodeList<DataPoint>(map['dataPoints'], (value) => DataPoint.fromMap((value as Map).cast<String, dynamic>())),
      datasetConfiguration: map['datasetConfiguration'] == null ? null : map['datasetConfiguration'] as String,
      name: map['name'] as String,
      topic: map['topic'] == null ? null : Topic.fromMap((map['topic'] as Map).cast<String, dynamic>()),
    );
  }
}

