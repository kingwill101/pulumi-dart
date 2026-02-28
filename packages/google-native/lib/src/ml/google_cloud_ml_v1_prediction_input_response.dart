// ignore_for_file: unused_element, unnecessary_cast

/// Represents input parameters for a prediction job.
class GoogleCloudMlV1PredictionInputResponse {
  /// Optional. Number of records per batch, defaults to 64. The service will buffer batch_size number of records in memory before invoking one Tensorflow prediction call internally. So take the record size and memory available into consideration when setting this parameter.
  final String batchSize;

  /// The format of the input data files.
  final String dataFormat;

  /// The Cloud Storage location of the input data files. May contain wildcards.
  final List<String> inputPaths;

  /// Optional. The maximum number of workers to be used for parallel processing. Defaults to 10 if not specified.
  final String maxWorkerCount;

  /// Use this field if you want to use the default version for the specified model. The string must use the following format: `"projects/YOUR_PROJECT/models/YOUR_MODEL"`
  final String modelName;

  /// Optional. Format of the output data files, defaults to JSON.
  final String outputDataFormat;

  /// The output Google Cloud Storage location.
  final String outputPath;

  /// The Google Compute Engine region to run the prediction job in. See the available regions for AI Platform services.
  final String region;

  /// Optional. The AI Platform runtime version to use for this batch prediction. If not set, AI Platform will pick the runtime version used during the CreateVersion request for this model version, or choose the latest stable version when model version information is not available such as when the model is specified by uri.
  final String runtimeVersion;

  /// Optional. The name of the signature defined in the SavedModel to use for this job. Please refer to [SavedModel](https://tensorflow.github.io/serving/serving_basic.html) for information about how to use signatures. Defaults to [DEFAULT_SERVING_SIGNATURE_DEF_KEY](https://www.tensorflow.org/api_docs/python/tf/saved_model/signature_constants) , which is "serving_default".
  final String signatureName;

  /// Use this field if you want to specify a Google Cloud Storage path for the model to use.
  final String uri;

  /// Use this field if you want to specify a version of the model to use. The string is formatted the same way as `model_version`, with the addition of the version information: `"projects/YOUR_PROJECT/models/YOUR_MODEL/versions/YOUR_VERSION"`
  final String versionName;

  /// Creates a new [GoogleCloudMlV1PredictionInputResponse].
  /// [batchSize] Optional. Number of records per batch, defaults to 64. The service will buffer batch_size number of records in memory before invoking one Tensorflow prediction call internally. So take the record size and memory available into consideration when setting this parameter.
  /// [dataFormat] The format of the input data files.
  /// [inputPaths] The Cloud Storage location of the input data files. May contain wildcards.
  /// [maxWorkerCount] Optional. The maximum number of workers to be used for parallel processing. Defaults to 10 if not specified.
  /// [modelName] Use this field if you want to use the default version for the specified model. The string must use the following format: `"projects/YOUR_PROJECT/models/YOUR_MODEL"`
  /// [outputDataFormat] Optional. Format of the output data files, defaults to JSON.
  /// [outputPath] The output Google Cloud Storage location.
  /// [region] The Google Compute Engine region to run the prediction job in. See the available regions for AI Platform services.
  /// [runtimeVersion] Optional. The AI Platform runtime version to use for this batch prediction. If not set, AI Platform will pick the runtime version used during the CreateVersion request for this model version, or choose the latest stable version when model version information is not available such as when the model is specified by uri.
  /// [signatureName] Optional. The name of the signature defined in the SavedModel to use for this job. Please refer to [SavedModel](https://tensorflow.github.io/serving/serving_basic.html) for information about how to use signatures. Defaults to [DEFAULT_SERVING_SIGNATURE_DEF_KEY](https://www.tensorflow.org/api_docs/python/tf/saved_model/signature_constants) , which is "serving_default".
  /// [uri] Use this field if you want to specify a Google Cloud Storage path for the model to use.
  /// [versionName] Use this field if you want to specify a version of the model to use. The string is formatted the same way as `model_version`, with the addition of the version information: `"projects/YOUR_PROJECT/models/YOUR_MODEL/versions/YOUR_VERSION"`
  GoogleCloudMlV1PredictionInputResponse({
    required this.batchSize,
    required this.dataFormat,
    required this.inputPaths,
    required this.maxWorkerCount,
    required this.modelName,
    required this.outputDataFormat,
    required this.outputPath,
    required this.region,
    required this.runtimeVersion,
    required this.signatureName,
    required this.uri,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['batchSize'] = batchSize;
    map['dataFormat'] = dataFormat;
    map['inputPaths'] = inputPaths;
    map['maxWorkerCount'] = maxWorkerCount;
    map['modelName'] = modelName;
    map['outputDataFormat'] = outputDataFormat;
    map['outputPath'] = outputPath;
    map['region'] = region;
    map['runtimeVersion'] = runtimeVersion;
    map['signatureName'] = signatureName;
    map['uri'] = uri;
    map['versionName'] = versionName;
    return map;
  }

  factory GoogleCloudMlV1PredictionInputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1PredictionInputResponse(
      batchSize: map['batchSize'] as String,
      dataFormat: map['dataFormat'] as String,
      inputPaths: (map['inputPaths'] as List).cast<String>(),
      maxWorkerCount: map['maxWorkerCount'] as String,
      modelName: map['modelName'] as String,
      outputDataFormat: map['outputDataFormat'] as String,
      outputPath: map['outputPath'] as String,
      region: map['region'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
      signatureName: map['signatureName'] as String,
      uri: map['uri'] as String,
      versionName: map['versionName'] as String,
    );
  }
}
