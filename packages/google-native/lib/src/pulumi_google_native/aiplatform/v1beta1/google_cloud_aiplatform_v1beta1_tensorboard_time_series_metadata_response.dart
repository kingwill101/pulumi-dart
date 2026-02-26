// ignore_for_file: unused_element, unnecessary_cast

/// Describes metadata for a TensorboardTimeSeries.
class GoogleCloudAiplatformV1beta1TensorboardTimeSeriesMetadataResponse {
  /// The largest blob sequence length (number of blobs) of all data points in this time series, if its ValueType is BLOB_SEQUENCE.
  final String maxBlobSequenceLength;

  /// Max step index of all data points within a TensorboardTimeSeries.
  final String maxStep;

  /// Max wall clock timestamp of all data points within a TensorboardTimeSeries.
  final String maxWallTime;

  GoogleCloudAiplatformV1beta1TensorboardTimeSeriesMetadataResponse({
    required this.maxBlobSequenceLength,
    required this.maxStep,
    required this.maxWallTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxBlobSequenceLength'] = maxBlobSequenceLength;
    map['maxStep'] = maxStep;
    map['maxWallTime'] = maxWallTime;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1TensorboardTimeSeriesMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1TensorboardTimeSeriesMetadataResponse(
      maxBlobSequenceLength: map['maxBlobSequenceLength'] as String,
      maxStep: map['maxStep'] as String,
      maxWallTime: map['maxWallTime'] as String,
    );
  }
}
