// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_data_protection_policy_document_statement_operation.dart';

class GetLogDataProtectionPolicyDocumentStatement {
  /// Set of at least 1 sensitive data identifiers that you want to mask. Read more in [Types of data that you can protect](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/protect-sensitive-log-data-types.html).
  final pulumi.Input<List<String>> dataIdentifiers;
  /// Configures the data protection operation applied by this statement.
  final pulumi.Input<GetLogDataProtectionPolicyDocumentStatementOperation> operation;
  /// Name of this statement.
  final pulumi.Input<String?>? sid;

  /// Creates a new [GetLogDataProtectionPolicyDocumentStatement].
  /// [dataIdentifiers] Set of at least 1 sensitive data identifiers that you want to mask. Read more in [Types of data that you can protect](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/protect-sensitive-log-data-types.html).
  /// [operation] Configures the data protection operation applied by this statement.
  /// [sid] Name of this statement.
  const GetLogDataProtectionPolicyDocumentStatement({
    required this.dataIdentifiers,
    required this.operation,
    this.sid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataIdentifiers': dataIdentifiers,
      'operation': pulumi.Input.mapInputValue<GetLogDataProtectionPolicyDocumentStatementOperation, Map<String, dynamic>>(operation, (value) => value.toMap()),
      'sid': ?sid,
    };
  }

  factory GetLogDataProtectionPolicyDocumentStatement.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatement(
      dataIdentifiers: pulumi.Input.fromValue((map['dataIdentifiers'] as List).cast<String>()),
      operation: pulumi.Input.fromValue(GetLogDataProtectionPolicyDocumentStatementOperation.fromMap((map['operation']! as Map).cast<String, dynamic>())),
      sid: (() { final guardedValue = map['sid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
