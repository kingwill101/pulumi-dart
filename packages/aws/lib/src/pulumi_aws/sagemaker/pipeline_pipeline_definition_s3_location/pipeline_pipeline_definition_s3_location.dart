// ignore_for_file: unused_element, unnecessary_cast

class PipelinePipelineDefinitionS3Location {
  /// Name of the S3 bucket.
  final String bucket;

  /// The object key (or key name) uniquely identifies the object in an S3 bucket.
  final String objectKey;

  /// Version Id of the pipeline definition file. If not specified, Amazon SageMaker AI will retrieve the latest version.
  final String? versionId;

  PipelinePipelineDefinitionS3Location({
    required this.bucket,
    required this.objectKey,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['objectKey'] = objectKey;
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    return map;
  }

  factory PipelinePipelineDefinitionS3Location.fromMap(
      Map<String, dynamic> map) {
    return PipelinePipelineDefinitionS3Location(
      bucket: map['bucket'] as String,
      objectKey: map['objectKey'] as String,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
    );
  }
}
