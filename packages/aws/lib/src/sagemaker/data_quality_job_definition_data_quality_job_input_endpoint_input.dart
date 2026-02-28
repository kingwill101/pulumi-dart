// ignore_for_file: unused_element, unnecessary_cast

class DataQualityJobDefinitionDataQualityJobInputEndpointInput {
  /// An endpoint in customer's account which has `data_capture_config` enabled.
  final String endpointName;

  /// Path to the filesystem where the endpoint data is available to the container. Defaults to `/opt/ml/processing/input`.
  final String? localPath;

  /// Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defaults to `FullyReplicated`. Valid values are `FullyReplicated` or `ShardedByS3Key`
  final String? s3DataDistributionType;

  /// Whether the `Pipe` or `File` is used as the input mode for transferring data for the monitoring job. `Pipe` mode is recommended for large datasets. `File` mode is useful for small files that fit in memory. Defaults to `File`.  Valid values are `Pipe` or `File`
  final String? s3InputMode;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobInputEndpointInput].
  /// [endpointName] An endpoint in customer's account which has `data_capture_config` enabled.
  /// [localPath] Path to the filesystem where the endpoint data is available to the container. Defaults to `/opt/ml/processing/input`.
  /// [s3DataDistributionType] Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defaults to `FullyReplicated`. Valid values are `FullyReplicated` or `ShardedByS3Key`
  /// [s3InputMode] Whether the `Pipe` or `File` is used as the input mode for transferring data for the monitoring job. `Pipe` mode is recommended for large datasets. `File` mode is useful for small files that fit in memory. Defaults to `File`.  Valid values are `Pipe` or `File`
  DataQualityJobDefinitionDataQualityJobInputEndpointInput({
    required this.endpointName,
    this.localPath,
    this.s3DataDistributionType,
    this.s3InputMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointName'] = endpointName;
    final localPathValue = localPath;
    if (localPathValue != null) {
      map['localPath'] = localPathValue;
    }
    final s3DataDistributionTypeValue = s3DataDistributionType;
    if (s3DataDistributionTypeValue != null) {
      map['s3DataDistributionType'] = s3DataDistributionTypeValue;
    }
    final s3InputModeValue = s3InputMode;
    if (s3InputModeValue != null) {
      map['s3InputMode'] = s3InputModeValue;
    }
    return map;
  }

  factory DataQualityJobDefinitionDataQualityJobInputEndpointInput.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInputEndpointInput(
      endpointName: map['endpointName'] as String,
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
      s3DataDistributionType: map['s3DataDistributionType'] == null
          ? null
          : map['s3DataDistributionType'] as String,
      s3InputMode:
          map['s3InputMode'] == null ? null : map['s3InputMode'] as String,
    );
  }
}
