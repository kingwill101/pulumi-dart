// ignore_for_file: unused_element, unnecessary_cast

/// Represents results of a prediction job.
class GoogleCloudMlV1PredictionOutput {
  /// The number of data instances which resulted in errors.
  final String? errorCount;

  /// Node hours used by the batch prediction job.
  final double? nodeHours;

  /// The output Google Cloud Storage location provided at the job creation time.
  final String? outputPath;

  /// The number of generated predictions.
  final String? predictionCount;

  GoogleCloudMlV1PredictionOutput({
    this.errorCount,
    this.nodeHours,
    this.outputPath,
    this.predictionCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorCountValue = errorCount;
    if (errorCountValue != null) {
      map['errorCount'] = errorCountValue;
    }
    final nodeHoursValue = nodeHours;
    if (nodeHoursValue != null) {
      map['nodeHours'] = nodeHoursValue;
    }
    final outputPathValue = outputPath;
    if (outputPathValue != null) {
      map['outputPath'] = outputPathValue;
    }
    final predictionCountValue = predictionCount;
    if (predictionCountValue != null) {
      map['predictionCount'] = predictionCountValue;
    }
    return map;
  }

  factory GoogleCloudMlV1PredictionOutput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1PredictionOutput(
      errorCount:
          map['errorCount'] == null ? null : map['errorCount'] as String,
      nodeHours: map['nodeHours'] == null ? null : map['nodeHours'] as double,
      outputPath:
          map['outputPath'] == null ? null : map['outputPath'] as String,
      predictionCount: map['predictionCount'] == null
          ? null
          : map['predictionCount'] as String,
    );
  }
}
