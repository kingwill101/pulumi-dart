// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_point.dart';
import 'topic.dart';

/// Defines the dataset properties.
class Dataset {
  /// Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  final pulumi.Input<List<DataPoint>>? dataPoints;
  /// Stringified JSON that contains connector-specific JSON string that describes configuration for the specific dataset.
  final pulumi.Input<String>? datasetConfiguration;
  /// Name of the dataset.
  final pulumi.Input<String> name;
  /// Object that describes the topic information for the specific dataset.
  final pulumi.Input<Topic>? topic;

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
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<DataPoint>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<DataPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datasetConfiguration': ?datasetConfiguration,
      'name': name,
      'topic': ?pulumi.Input.mapOptionalInputValue<Topic, Map<String, dynamic>>(topic, (value) => value.toMap()),
    };
  }

  factory Dataset.fromMap(Map<String, dynamic> map) {
    return Dataset(
      dataPoints: map['dataPoints'] == null ? null : (pulumi.Input.decodeList<DataPoint>(map['dataPoints']!, (value) => DataPoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      datasetConfiguration: map['datasetConfiguration'] == null ? null : (map['datasetConfiguration']! as String).input(),
      name: (map['name'] as String).input(),
      topic: map['topic'] == null ? null : (Topic.fromMap((map['topic']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

