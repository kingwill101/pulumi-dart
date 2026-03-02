// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation {
  /// Specifies the S3 bucket for the customer input file.
  final pulumi.Input<String>? bucket;
  /// The name assigned to the file when it was created in S3. You use the object key to retrieve the object.
  final pulumi.Input<String>? key;

  /// Creates a new [WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation].
  /// [bucket] Specifies the S3 bucket for the customer input file.
  /// [key] The name assigned to the file when it was created in S3. You use the object key to retrieve the object.
  WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation({
    this.bucket,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'key': ?key,
    };
  }

  factory WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation.fromMap(Map<String, dynamic> map) {
    return WorkflowStepCopyStepDetailsDestinationFileLocationS3FileLocation(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
    );
  }
}

