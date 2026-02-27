// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'time_series_value_type2.dart';

/// The set of arguments for TimeSeries.
class TimeSeriesArgs2 {
  /// Description of this TensorboardTimeSeries.
  final Input<String>? description;

  /// User provided name of this TensorboardTimeSeries. This value should be unique among all TensorboardTimeSeries resources belonging to the same TensorboardRun resource (parent resource).
  final Input<String> displayName;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final Input<String>? etag;
  final Input<String> experimentId;
  final Input<String>? location;

  /// Data of the current plugin, with the size limited to 65KB.
  final Input<String>? pluginData;

  /// Immutable. Name of the plugin this time series pertain to. Such as Scalar, Tensor, Blob
  final Input<String>? pluginName;
  final Input<String>? project;
  final Input<String> runId;
  final Input<String> tensorboardId;

  /// Optional. The user specified unique ID to use for the TensorboardTimeSeries, which becomes the final component of the TensorboardTimeSeries's resource name. This value should match "a-z0-9{0, 127}"
  final Input<String>? tensorboardTimeSeriesId;

  /// Immutable. Type of TensorboardTimeSeries value.
  final Input<TimeSeriesValueType2> valueType;

  TimeSeriesArgs2({
    this.description,
    required this.displayName,
    this.etag,
    required this.experimentId,
    this.location,
    this.pluginData,
    this.pluginName,
    this.project,
    required this.runId,
    required this.tensorboardId,
    this.tensorboardTimeSeriesId,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['experimentId'] = experimentId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final pluginDataValue = pluginData;
    if (pluginDataValue != null) {
      map['pluginData'] = pluginDataValue;
    }
    final pluginNameValue = pluginName;
    if (pluginNameValue != null) {
      map['pluginName'] = pluginNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['runId'] = runId;
    map['tensorboardId'] = tensorboardId;
    final tensorboardTimeSeriesIdValue = tensorboardTimeSeriesId;
    if (tensorboardTimeSeriesIdValue != null) {
      map['tensorboardTimeSeriesId'] = tensorboardTimeSeriesIdValue;
    }
    map['valueType'] = Input.mapInputValue<TimeSeriesValueType2, String>(
        valueType, (value) => value.value);
    return map;
  }

  factory TimeSeriesArgs2.fromMap(Map<String, dynamic> map) {
    return TimeSeriesArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      etag: Input.asOptionalInput<String>(map['etag']),
      experimentId: Input.asInput<String>(map['experimentId']),
      location: Input.asOptionalInput<String>(map['location']),
      pluginData: Input.asOptionalInput<String>(map['pluginData']),
      pluginName: Input.asOptionalInput<String>(map['pluginName']),
      project: Input.asOptionalInput<String>(map['project']),
      runId: Input.asInput<String>(map['runId']),
      tensorboardId: Input.asInput<String>(map['tensorboardId']),
      tensorboardTimeSeriesId:
          Input.asOptionalInput<String>(map['tensorboardTimeSeriesId']),
      valueType: Input.asInput<TimeSeriesValueType2>(map['valueType']),
    );
  }
}
