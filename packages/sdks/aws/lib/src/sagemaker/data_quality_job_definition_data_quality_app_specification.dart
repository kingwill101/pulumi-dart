// ignore_for_file: unused_element, unnecessary_cast


class DataQualityJobDefinitionDataQualityAppSpecification {
  /// Sets the environment variables in the container that the monitoring job runs. A list of key value pairs.
  final Map<String, String>? environment;
  /// The container image that the data quality monitoring job runs.
  final String imageUri;
  /// An Amazon S3 URI to a script that is called after analysis has been performed. Applicable only for the built-in (first party) containers.
  final String? postAnalyticsProcessorSourceUri;
  /// An Amazon S3 URI to a script that is called per row prior to running analysis. It can base64 decode the payload and convert it into a flatted json so that the built-in container can use the converted data. Applicable only for the built-in (first party) containers.
  final String? recordPreprocessorSourceUri;

  /// Creates a new [DataQualityJobDefinitionDataQualityAppSpecification].
  /// [environment] Sets the environment variables in the container that the monitoring job runs. A list of key value pairs.
  /// [imageUri] The container image that the data quality monitoring job runs.
  /// [postAnalyticsProcessorSourceUri] An Amazon S3 URI to a script that is called after analysis has been performed. Applicable only for the built-in (first party) containers.
  /// [recordPreprocessorSourceUri] An Amazon S3 URI to a script that is called per row prior to running analysis. It can base64 decode the payload and convert it into a flatted json so that the built-in container can use the converted data. Applicable only for the built-in (first party) containers.
  DataQualityJobDefinitionDataQualityAppSpecification({
    this.environment,
    required this.imageUri,
    this.postAnalyticsProcessorSourceUri,
    this.recordPreprocessorSourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?environment,
      'imageUri': imageUri,
      'postAnalyticsProcessorSourceUri': ?postAnalyticsProcessorSourceUri,
      'recordPreprocessorSourceUri': ?recordPreprocessorSourceUri,
    };
  }

  factory DataQualityJobDefinitionDataQualityAppSpecification.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityAppSpecification(
      environment: map['environment'] == null ? null : (map['environment'] as Map).cast<String, String>(),
      imageUri: map['imageUri'] as String,
      postAnalyticsProcessorSourceUri: map['postAnalyticsProcessorSourceUri'] == null ? null : map['postAnalyticsProcessorSourceUri'] as String,
      recordPreprocessorSourceUri: map['recordPreprocessorSourceUri'] == null ? null : map['recordPreprocessorSourceUri'] as String,
    );
  }
}

