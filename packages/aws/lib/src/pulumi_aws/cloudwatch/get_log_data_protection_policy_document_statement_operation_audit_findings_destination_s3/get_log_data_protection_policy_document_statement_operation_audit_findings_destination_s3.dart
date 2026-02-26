// ignore_for_file: unused_element, unnecessary_cast

class GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3 {
  /// Name of the S3 Bucket to send findings to.
  final String bucket;

  GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    return map;
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3.fromMap(
      Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3(
      bucket: map['bucket'] as String,
    );
  }
}
