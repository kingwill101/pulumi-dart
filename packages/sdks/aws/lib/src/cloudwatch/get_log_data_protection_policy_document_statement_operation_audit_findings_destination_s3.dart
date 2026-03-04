// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3 {
  /// Name of the S3 Bucket to send findings to.
  final pulumi.Input<String> bucket;

  /// Creates a new [GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3].
  /// [bucket] Name of the S3 Bucket to send findings to.
  GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': bucket};
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
    );
  }
}
