// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataQualityJobDefinitionDataQualityJobInputEndpointInput {
  /// An endpoint in customer's account which has `dataCaptureConfig` enabled.
  final pulumi.Input<String> endpointName;
  /// Path to the filesystem where the endpoint data is available to the container. Defaults to `/opt/ml/processing/input`.
  final pulumi.Input<String?>? localPath;
  /// Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defaults to `FullyReplicated`. Valid values are `FullyReplicated` or `ShardedByS3Key`
  final pulumi.Input<String?>? s3DataDistributionType;
  /// Whether the `Pipe` or `File` is used as the input mode for transferring data for the monitoring job. `Pipe` mode is recommended for large datasets. `File` mode is useful for small files that fit in memory. Defaults to `File`.  Valid values are `Pipe` or `File`
  final pulumi.Input<String?>? s3InputMode;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobInputEndpointInput].
  /// [endpointName] An endpoint in customer's account which has `dataCaptureConfig` enabled.
  /// [localPath] Path to the filesystem where the endpoint data is available to the container. Defaults to `/opt/ml/processing/input`.
  /// [s3DataDistributionType] Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defaults to `FullyReplicated`. Valid values are `FullyReplicated` or `ShardedByS3Key`
  /// [s3InputMode] Whether the `Pipe` or `File` is used as the input mode for transferring data for the monitoring job. `Pipe` mode is recommended for large datasets. `File` mode is useful for small files that fit in memory. Defaults to `File`.  Valid values are `Pipe` or `File`
  const DataQualityJobDefinitionDataQualityJobInputEndpointInput({
    required this.endpointName,
    this.localPath,
    this.s3DataDistributionType,
    this.s3InputMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'localPath': ?localPath,
      's3DataDistributionType': ?s3DataDistributionType,
      's3InputMode': ?s3InputMode,
    };
  }

  factory DataQualityJobDefinitionDataQualityJobInputEndpointInput.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobInputEndpointInput(
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3DataDistributionType: (() { final guardedValue = map['s3DataDistributionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3InputMode: (() { final guardedValue = map['s3InputMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
