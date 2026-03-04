// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation {
  /// Specifies the S3 bucket for the customer input file.
  final pulumi.Input<String>? bucket;

  /// The name assigned to the file when it was created in S3. You use the object key to retrieve the object.
  final pulumi.Input<String>? key;

  /// Creates a new [WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation].
  /// [bucket] Specifies the S3 bucket for the customer input file.
  /// [key] The name assigned to the file when it was created in S3. You use the object key to retrieve the object.
  WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation({
    this.bucket,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': ?bucket, 'key': ?key};
  }

  factory WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationS3FileLocation(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
