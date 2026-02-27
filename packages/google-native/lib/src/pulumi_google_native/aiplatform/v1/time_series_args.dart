// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_series_value_type.dart';

/// The set of arguments for TimeSeries.
class TimeSeriesArgs {
  /// Description of this TensorboardTimeSeries.
  final pulumi.Input<String>? description;

  /// User provided name of this TensorboardTimeSeries. This value should be unique among all TensorboardTimeSeries resources belonging to the same TensorboardRun resource (parent resource).
  final pulumi.Input<String> displayName;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String>? location;

  /// Data of the current plugin, with the size limited to 65KB.
  final pulumi.Input<String>? pluginData;

  /// Immutable. Name of the plugin this time series pertain to. Such as Scalar, Tensor, Blob
  final pulumi.Input<String>? pluginName;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runId;
  final pulumi.Input<String> tensorboardId;

  /// Optional. The user specified unique ID to use for the TensorboardTimeSeries, which becomes the final component of the TensorboardTimeSeries's resource name. This value should match "a-z0-9{0, 127}"
  final pulumi.Input<String>? tensorboardTimeSeriesId;

  /// Immutable. Type of TensorboardTimeSeries value.
  final pulumi.Input<TimeSeriesValueType> valueType;

  TimeSeriesArgs({
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
    map['valueType'] = pulumi.Input.mapInputValue<TimeSeriesValueType, String>(
        valueType, (value) => value.value);
    return map;
  }

  factory TimeSeriesArgs.fromMap(Map<String, dynamic> map) {
    return TimeSeriesArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      experimentId: pulumi.Input.asInput<String>(map['experimentId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      pluginData: pulumi.Input.asOptionalInput<String>(map['pluginData']),
      pluginName: pulumi.Input.asOptionalInput<String>(map['pluginName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runId: pulumi.Input.asInput<String>(map['runId']),
      tensorboardId: pulumi.Input.asInput<String>(map['tensorboardId']),
      tensorboardTimeSeriesId:
          pulumi.Input.asOptionalInput<String>(map['tensorboardTimeSeriesId']),
      valueType: pulumi.Input.asInput<TimeSeriesValueType>(map['valueType']),
    );
  }
}
