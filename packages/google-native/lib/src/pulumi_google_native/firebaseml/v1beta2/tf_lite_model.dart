// ignore_for_file: unused_element, unnecessary_cast

/// Information that is specific to TfLite models.
class TfLiteModel {
  /// The AutoML model id referencing a model you created with the AutoML API. The name should have format 'projects//locations//models/' (This is the model resource name returned from the AutoML API)
  final String? automlModel;

  /// The TfLite file containing the model. (Stored in Google Cloud). The gcs_tflite_uri should have form: gs://some-bucket/some-model.tflite Note: If you update the file in the original location, it is necessary to call UpdateModel for ML to pick up and validate the updated file.
  final String? gcsTfliteUri;

  TfLiteModel({
    this.automlModel,
    this.gcsTfliteUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automlModelValue = automlModel;
    if (automlModelValue != null) {
      map['automlModel'] = automlModelValue;
    }
    final gcsTfliteUriValue = gcsTfliteUri;
    if (gcsTfliteUriValue != null) {
      map['gcsTfliteUri'] = gcsTfliteUriValue;
    }
    return map;
  }

  factory TfLiteModel.fromMap(Map<String, dynamic> map) {
    return TfLiteModel(
      automlModel:
          map['automlModel'] == null ? null : map['automlModel'] as String,
      gcsTfliteUri:
          map['gcsTfliteUri'] == null ? null : map['gcsTfliteUri'] as String,
    );
  }
}
