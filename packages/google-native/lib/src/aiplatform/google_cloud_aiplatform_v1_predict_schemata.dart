// ignore_for_file: unused_element, unnecessary_cast

/// Contains the schemata used in Model's predictions and explanations via PredictionService.Predict, PredictionService.Explain and BatchPredictionJob.
class GoogleCloudAiplatformV1PredictSchemata {
  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing the format of a single instance, which are used in PredictRequest.instances, ExplainRequest.instances and BatchPredictionJob.input_config. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final String? instanceSchemaUri;

  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing the parameters of prediction and explanation via PredictRequest.parameters, ExplainRequest.parameters and BatchPredictionJob.model_parameters. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI, if no parameters are supported, then it is set to an empty string. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final String? parametersSchemaUri;

  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing the format of a single prediction produced by this Model, which are returned via PredictResponse.predictions, ExplainResponse.explanations, and BatchPredictionJob.output_config. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final String? predictionSchemaUri;

  /// Creates a new [GoogleCloudAiplatformV1PredictSchemata].
  /// [instanceSchemaUri] Immutable. Points to a YAML file stored on Google Cloud Storage describing the format of a single instance, which are used in PredictRequest.instances, ExplainRequest.instances and BatchPredictionJob.input_config. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  /// [parametersSchemaUri] Immutable. Points to a YAML file stored on Google Cloud Storage describing the parameters of prediction and explanation via PredictRequest.parameters, ExplainRequest.parameters and BatchPredictionJob.model_parameters. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI, if no parameters are supported, then it is set to an empty string. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  /// [predictionSchemaUri] Immutable. Points to a YAML file stored on Google Cloud Storage describing the format of a single prediction produced by this Model, which are returned via PredictResponse.predictions, ExplainResponse.explanations, and BatchPredictionJob.output_config. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML Models always have this field populated by Vertex AI. Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  GoogleCloudAiplatformV1PredictSchemata({
    this.instanceSchemaUri,
    this.parametersSchemaUri,
    this.predictionSchemaUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSchemaUri': ?instanceSchemaUri,
      'parametersSchemaUri': ?parametersSchemaUri,
      'predictionSchemaUri': ?predictionSchemaUri,
    };
  }

  factory GoogleCloudAiplatformV1PredictSchemata.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1PredictSchemata(
      instanceSchemaUri: map['instanceSchemaUri'] == null
          ? null
          : map['instanceSchemaUri'] as String,
      parametersSchemaUri: map['parametersSchemaUri'] == null
          ? null
          : map['parametersSchemaUri'] as String,
      predictionSchemaUri: map['predictionSchemaUri'] == null
          ? null
          : map['predictionSchemaUri'] as String,
    );
  }
}
