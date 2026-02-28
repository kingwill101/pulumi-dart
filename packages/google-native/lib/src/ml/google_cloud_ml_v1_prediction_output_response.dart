// ignore_for_file: unused_element, unnecessary_cast


/// Represents results of a prediction job.
class GoogleCloudMlV1PredictionOutputResponse {
  /// The number of data instances which resulted in errors.
  final String errorCount;
  /// Node hours used by the batch prediction job.
  final double nodeHours;
  /// The output Google Cloud Storage location provided at the job creation time.
  final String outputPath;
  /// The number of generated predictions.
  final String predictionCount;

  /// Creates a new [GoogleCloudMlV1PredictionOutputResponse].
  /// [errorCount] The number of data instances which resulted in errors.
  /// [nodeHours] Node hours used by the batch prediction job.
  /// [outputPath] The output Google Cloud Storage location provided at the job creation time.
  /// [predictionCount] The number of generated predictions.
  GoogleCloudMlV1PredictionOutputResponse({
    required this.errorCount,
    required this.nodeHours,
    required this.outputPath,
    required this.predictionCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCount': errorCount,
      'nodeHours': nodeHours,
      'outputPath': outputPath,
      'predictionCount': predictionCount,
    };
  }

  factory GoogleCloudMlV1PredictionOutputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1PredictionOutputResponse(
      errorCount: map['errorCount'] as String,
      nodeHours: map['nodeHours'] as double,
      outputPath: map['outputPath'] as String,
      predictionCount: map['predictionCount'] as String,
    );
  }
}

