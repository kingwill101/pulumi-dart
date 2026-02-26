// ignore_for_file: unused_element, unnecessary_cast

class GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose {
  /// Name of the Kinesis Firehose Delivery Stream to send findings to.
  final String deliveryStream;

  GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose({
    required this.deliveryStream,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deliveryStream'] = deliveryStream;
    return map;
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose.fromMap(
      Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose(
      deliveryStream: map['deliveryStream'] as String,
    );
  }
}
