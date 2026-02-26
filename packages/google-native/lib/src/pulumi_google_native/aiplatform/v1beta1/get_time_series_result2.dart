// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_tensorboard_time_series_metadata_response.dart';

/// Result data returned by getTimeSeries.
class GetTimeSeriesResult2 {
  /// Timestamp when this TensorboardTimeSeries was created.
  final String createTime;

  /// Description of this TensorboardTimeSeries.
  final String description;

  /// User provided name of this TensorboardTimeSeries. This value should be unique among all TensorboardTimeSeries resources belonging to the same TensorboardRun resource (parent resource).
  final String displayName;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// Scalar, Tensor, or Blob metadata for this TensorboardTimeSeries.
  final GoogleCloudAiplatformV1beta1TensorboardTimeSeriesMetadataResponse
      metadata;

  /// Name of the TensorboardTimeSeries.
  final String name;

  /// Data of the current plugin, with the size limited to 65KB.
  final String pluginData;

  /// Immutable. Name of the plugin this time series pertain to. Such as Scalar, Tensor, Blob
  final String pluginName;

  /// Timestamp when this TensorboardTimeSeries was last updated.
  final String updateTime;

  /// Immutable. Type of TensorboardTimeSeries value.
  final String valueType;

  GetTimeSeriesResult2({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.etag,
    required this.metadata,
    required this.name,
    required this.pluginData,
    required this.pluginName,
    required this.updateTime,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['metadata'] = metadata.toMap();
    map['name'] = name;
    map['pluginData'] = pluginData;
    map['pluginName'] = pluginName;
    map['updateTime'] = updateTime;
    map['valueType'] = valueType;
    return map;
  }

  factory GetTimeSeriesResult2.fromMap(Map<String, dynamic> map) {
    return GetTimeSeriesResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      metadata:
          GoogleCloudAiplatformV1beta1TensorboardTimeSeriesMetadataResponse
              .fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      pluginData: map['pluginData'] as String,
      pluginName: map['pluginName'] as String,
      updateTime: map['updateTime'] as String,
      valueType: map['valueType'] as String,
    );
  }
}
