// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_ml_v1_prediction_input_data_format.dart';
import 'google_cloud_ml_v1_prediction_input_output_data_format.dart';

/// Represents input parameters for a prediction job.
class GoogleCloudMlV1PredictionInput {
  /// Optional. Number of records per batch, defaults to 64. The service will buffer batch_size number of records in memory before invoking one Tensorflow prediction call internally. So take the record size and memory available into consideration when setting this parameter.
  final String? batchSize;

  /// The format of the input data files.
  final GoogleCloudMlV1PredictionInputDataFormat dataFormat;

  /// The Cloud Storage location of the input data files. May contain wildcards.
  final List<String> inputPaths;

  /// Optional. The maximum number of workers to be used for parallel processing. Defaults to 10 if not specified.
  final String? maxWorkerCount;

  /// Use this field if you want to use the default version for the specified model. The string must use the following format: `"projects/YOUR_PROJECT/models/YOUR_MODEL"`
  final String? modelName;

  /// Optional. Format of the output data files, defaults to JSON.
  final GoogleCloudMlV1PredictionInputOutputDataFormat? outputDataFormat;

  /// The output Google Cloud Storage location.
  final String outputPath;

  /// The Google Compute Engine region to run the prediction job in. See the available regions for AI Platform services.
  final String region;

  /// Optional. The AI Platform runtime version to use for this batch prediction. If not set, AI Platform will pick the runtime version used during the CreateVersion request for this model version, or choose the latest stable version when model version information is not available such as when the model is specified by uri.
  final String? runtimeVersion;

  /// Optional. The name of the signature defined in the SavedModel to use for this job. Please refer to [SavedModel](https://tensorflow.github.io/serving/serving_basic.html) for information about how to use signatures. Defaults to [DEFAULT_SERVING_SIGNATURE_DEF_KEY](https://www.tensorflow.org/api_docs/python/tf/saved_model/signature_constants) , which is "serving_default".
  final String? signatureName;

  /// Use this field if you want to specify a Google Cloud Storage path for the model to use.
  final String? uri;

  /// Use this field if you want to specify a version of the model to use. The string is formatted the same way as `model_version`, with the addition of the version information: `"projects/YOUR_PROJECT/models/YOUR_MODEL/versions/YOUR_VERSION"`
  final String? versionName;

  GoogleCloudMlV1PredictionInput({
    this.batchSize,
    required this.dataFormat,
    required this.inputPaths,
    this.maxWorkerCount,
    this.modelName,
    this.outputDataFormat,
    required this.outputPath,
    required this.region,
    this.runtimeVersion,
    this.signatureName,
    this.uri,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchSizeValue = batchSize;
    if (batchSizeValue != null) {
      map['batchSize'] = batchSizeValue;
    }
    map['dataFormat'] = dataFormat.value;
    map['inputPaths'] = inputPaths;
    final maxWorkerCountValue = maxWorkerCount;
    if (maxWorkerCountValue != null) {
      map['maxWorkerCount'] = maxWorkerCountValue;
    }
    final modelNameValue = modelName;
    if (modelNameValue != null) {
      map['modelName'] = modelNameValue;
    }
    final outputDataFormatValue = outputDataFormat;
    if (outputDataFormatValue != null) {
      map['outputDataFormat'] = outputDataFormatValue.value;
    }
    map['outputPath'] = outputPath;
    map['region'] = region;
    final runtimeVersionValue = runtimeVersion;
    if (runtimeVersionValue != null) {
      map['runtimeVersion'] = runtimeVersionValue;
    }
    final signatureNameValue = signatureName;
    if (signatureNameValue != null) {
      map['signatureName'] = signatureNameValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    final versionNameValue = versionName;
    if (versionNameValue != null) {
      map['versionName'] = versionNameValue;
    }
    return map;
  }

  factory GoogleCloudMlV1PredictionInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1PredictionInput(
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as String,
      dataFormat: GoogleCloudMlV1PredictionInputDataFormat.fromValue(
          map['dataFormat'] as String),
      inputPaths: (map['inputPaths'] as List).cast<String>(),
      maxWorkerCount: map['maxWorkerCount'] == null
          ? null
          : map['maxWorkerCount'] as String,
      modelName: map['modelName'] == null ? null : map['modelName'] as String,
      outputDataFormat: map['outputDataFormat'] == null
          ? null
          : GoogleCloudMlV1PredictionInputOutputDataFormat.fromValue(
              map['outputDataFormat'] as String),
      outputPath: map['outputPath'] as String,
      region: map['region'] as String,
      runtimeVersion: map['runtimeVersion'] == null
          ? null
          : map['runtimeVersion'] as String,
      signatureName:
          map['signatureName'] == null ? null : map['signatureName'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
      versionName:
          map['versionName'] == null ? null : map['versionName'] as String,
    );
  }
}
