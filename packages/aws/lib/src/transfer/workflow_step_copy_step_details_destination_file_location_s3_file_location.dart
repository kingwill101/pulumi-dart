// ignore_for_file: unused_element, unnecessary_cast

class WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation {
  /// Specifies the S3 bucket for the customer input file.
  final String? bucket;

  /// The name assigned to the file when it was created in S3. You use the object key to retrieve the object.
  final String? key;

  /// Creates a new [WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation].
  /// [bucket] Specifies the S3 bucket for the customer input file.
  /// [key] The name assigned to the file when it was created in S3. You use the object key to retrieve the object.
  WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation({
    this.bucket,
    this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    return map;
  }

  factory WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation.fromMap(
      Map<String, dynamic> map) {
    return WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}
