// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_series_value_type.dart';

/// {@template pulumi_aiplatform_v1_time_series_args_doc}
/// The set of arguments for TimeSeries.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_time_series_args_doc}
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

  /// Creates a new [TimeSeriesArgs].
  /// [description] Description of this TensorboardTimeSeries.
  /// [displayName] User provided name of this TensorboardTimeSeries. This value should be unique among all TensorboardTimeSeries resources belonging to the same TensorboardRun resource (parent resource).
  /// [etag] Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [experimentId] Required.
  /// [location] Optional.
  /// [pluginData] Data of the current plugin, with the size limited to 65KB.
  /// [pluginName] Immutable. Name of the plugin this time series pertain to. Such as Scalar, Tensor, Blob
  /// [project] Optional.
  /// [runId] Required.
  /// [tensorboardId] Required.
  /// [tensorboardTimeSeriesId] Optional. The user specified unique ID to use for the TensorboardTimeSeries, which becomes the final component of the TensorboardTimeSeries's resource name. This value should match "a-z0-9{0, 127}"
  /// [valueType] Immutable. Type of TensorboardTimeSeries value.
  TimeSeriesArgs({
    String? description,
    required String displayName,
    String? etag,
    required String experimentId,
    String? location,
    String? pluginData,
    String? pluginName,
    String? project,
    required String runId,
    required String tensorboardId,
    String? tensorboardTimeSeriesId,
    required TimeSeriesValueType valueType,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asInput<String>(displayName),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       experimentId = pulumi.Input.asInput<String>(experimentId),
       location = pulumi.Input.asOptionalInput<String>(location),
       pluginData = pulumi.Input.asOptionalInput<String>(pluginData),
       pluginName = pulumi.Input.asOptionalInput<String>(pluginName),
       project = pulumi.Input.asOptionalInput<String>(project),
       runId = pulumi.Input.asInput<String>(runId),
       tensorboardId = pulumi.Input.asInput<String>(tensorboardId),
       tensorboardTimeSeriesId = pulumi.Input.asOptionalInput<String>(
         tensorboardTimeSeriesId,
       ),
       valueType = pulumi.Input.asInput<TimeSeriesValueType>(valueType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'etag': ?etag,
      'experimentId': experimentId,
      'location': ?location,
      'pluginData': ?pluginData,
      'pluginName': ?pluginName,
      'project': ?project,
      'runId': runId,
      'tensorboardId': tensorboardId,
      'tensorboardTimeSeriesId': ?tensorboardTimeSeriesId,
      'valueType': pulumi.Input.mapInputValue<TimeSeriesValueType, String>(
        valueType,
        (value) => value.value,
      ),
    };
  }

  factory TimeSeriesArgs.fromMap(Map<String, dynamic> map) {
    return TimeSeriesArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      experimentId: map['experimentId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      pluginData: map['pluginData'] == null
          ? null
          : map['pluginData'] as String,
      pluginName: map['pluginName'] == null
          ? null
          : map['pluginName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      runId: map['runId'] as String,
      tensorboardId: map['tensorboardId'] as String,
      tensorboardTimeSeriesId: map['tensorboardTimeSeriesId'] == null
          ? null
          : map['tensorboardTimeSeriesId'] as String,
      valueType: TimeSeriesValueType.fromValue(map['valueType'] as String),
    );
  }
}
