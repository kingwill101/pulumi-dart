// ignore_for_file: unused_element, unnecessary_cast

/// Encapsulates the metadata for basic sample series represented by a line chart
class BasicPerfSampleSeriesResponse {
  final String perfMetricType;
  final String perfUnit;
  final String sampleSeriesLabel;

  BasicPerfSampleSeriesResponse({
    required this.perfMetricType,
    required this.perfUnit,
    required this.sampleSeriesLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['perfMetricType'] = perfMetricType;
    map['perfUnit'] = perfUnit;
    map['sampleSeriesLabel'] = sampleSeriesLabel;
    return map;
  }

  factory BasicPerfSampleSeriesResponse.fromMap(Map<String, dynamic> map) {
    return BasicPerfSampleSeriesResponse(
      perfMetricType: map['perfMetricType'] as String,
      perfUnit: map['perfUnit'] as String,
      sampleSeriesLabel: map['sampleSeriesLabel'] as String,
    );
  }
}
