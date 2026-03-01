// ignore_for_file: unused_element, unnecessary_cast


class WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation {
  /// Specifies the S3 bucket for the customer input file.
  final String? bucket;
  /// The name assigned to the file when it was created in S3. You use the object key to retrieve the object.
  final String? key;

  /// Creates a new [WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation].
  /// [bucket] Specifies the S3 bucket for the customer input file.
  /// [key] The name assigned to the file when it was created in S3. You use the object key to retrieve the object.
  WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation({
    this.bucket,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'key': ?key,
    };
  }

  factory WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}

