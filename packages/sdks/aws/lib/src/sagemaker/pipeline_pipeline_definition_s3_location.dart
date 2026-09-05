// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelinePipelineDefinitionS3Location {
  /// Name of the S3 bucket.
  final pulumi.Input<String> bucket;
  /// The object key (or key name) uniquely identifies the object in an S3 bucket.
  final pulumi.Input<String> objectKey;
  /// Version Id of the pipeline definition file. If not specified, Amazon SageMaker AI will retrieve the latest version.
  final pulumi.Input<String?>? versionId;

  /// Creates a new [PipelinePipelineDefinitionS3Location].
  /// [bucket] Name of the S3 bucket.
  /// [objectKey] The object key (or key name) uniquely identifies the object in an S3 bucket.
  /// [versionId] Version Id of the pipeline definition file. If not specified, Amazon SageMaker AI will retrieve the latest version.
  const PipelinePipelineDefinitionS3Location({
    required this.bucket,
    required this.objectKey,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'objectKey': objectKey,
      'versionId': ?versionId,
    };
  }

  factory PipelinePipelineDefinitionS3Location.fromMap(Map<String, dynamic> map) {
    return PipelinePipelineDefinitionS3Location(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      objectKey: pulumi.Input.fromValue(map['objectKey'] as String),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
