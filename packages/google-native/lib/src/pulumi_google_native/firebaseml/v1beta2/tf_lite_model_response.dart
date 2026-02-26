// ignore_for_file: unused_element, unnecessary_cast

/// Information that is specific to TfLite models.
class TfLiteModelResponse {
  /// The AutoML model id referencing a model you created with the AutoML API. The name should have format 'projects//locations//models/' (This is the model resource name returned from the AutoML API)
  final String automlModel;

  /// The TfLite file containing the model. (Stored in Google Cloud). The gcs_tflite_uri should have form: gs://some-bucket/some-model.tflite Note: If you update the file in the original location, it is necessary to call UpdateModel for ML to pick up and validate the updated file.
  final String gcsTfliteUri;

  /// The size of the TFLite model
  final String sizeBytes;

  TfLiteModelResponse({
    required this.automlModel,
    required this.gcsTfliteUri,
    required this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automlModel'] = automlModel;
    map['gcsTfliteUri'] = gcsTfliteUri;
    map['sizeBytes'] = sizeBytes;
    return map;
  }

  factory TfLiteModelResponse.fromMap(Map<String, dynamic> map) {
    return TfLiteModelResponse(
      automlModel: map['automlModel'] as String,
      gcsTfliteUri: map['gcsTfliteUri'] as String,
      sizeBytes: map['sizeBytes'] as String,
    );
  }
}
