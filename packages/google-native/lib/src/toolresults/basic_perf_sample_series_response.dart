// ignore_for_file: unused_element, unnecessary_cast


/// Encapsulates the metadata for basic sample series represented by a line chart
class BasicPerfSampleSeriesResponse {
  final String perfMetricType;
  final String perfUnit;
  final String sampleSeriesLabel;

  /// Creates a new [BasicPerfSampleSeriesResponse].
  /// [perfMetricType] Required.
  /// [perfUnit] Required.
  /// [sampleSeriesLabel] Required.
  BasicPerfSampleSeriesResponse({
    required this.perfMetricType,
    required this.perfUnit,
    required this.sampleSeriesLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perfMetricType': perfMetricType,
      'perfUnit': perfUnit,
      'sampleSeriesLabel': sampleSeriesLabel,
    };
  }

  factory BasicPerfSampleSeriesResponse.fromMap(Map<String, dynamic> map) {
    return BasicPerfSampleSeriesResponse(
      perfMetricType: map['perfMetricType'] as String,
      perfUnit: map['perfUnit'] as String,
      sampleSeriesLabel: map['sampleSeriesLabel'] as String,
    );
  }
}

