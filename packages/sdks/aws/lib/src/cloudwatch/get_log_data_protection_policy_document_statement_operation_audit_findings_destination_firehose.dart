// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose {
  /// Name of the Kinesis Firehose Delivery Stream to send findings to.
  final pulumi.Input<String> deliveryStream;

  /// Creates a new [GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose].
  /// [deliveryStream] Name of the Kinesis Firehose Delivery Stream to send findings to.
  GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose({
    required this.deliveryStream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryStream': deliveryStream,
    };
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehose(
      deliveryStream: (map['deliveryStream'] as String).input(),
    );
  }
}

