// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ComplianceExecutionSummary
class ComplianceExecutionSummaryResponse {
  /// <p>An ID created by the system when <code>PutComplianceItems</code> was called. For example, <code>CommandID</code> is a valid execution ID. You can use this ID in subsequent calls.</p>
  final pulumi.Input<String>? executionId;
  /// <p>The time the execution ran as a datetime object that is saved in the following format: <code>yyyy-MM-dd'T'HH:mm:ss'Z'</code> </p>
  final pulumi.Input<String>? executionTime;
  /// <p>The type of execution. For example, <code>Command</code> is a valid execution type.</p>
  final pulumi.Input<String>? executionType;

  /// Creates a new [ComplianceExecutionSummaryResponse].
  /// [executionId] <p>An ID created by the system when <code>PutComplianceItems</code> was called. For example, <code>CommandID</code> is a valid execution ID. You can use this ID in subsequent calls.</p>
  /// [executionTime] <p>The time the execution ran as a datetime object that is saved in the following format: <code>yyyy-MM-dd'T'HH:mm:ss'Z'</code> </p>
  /// [executionType] <p>The type of execution. For example, <code>Command</code> is a valid execution type.</p>
  ComplianceExecutionSummaryResponse({
    this.executionId,
    this.executionTime,
    this.executionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionId': ?executionId,
      'executionTime': ?executionTime,
      'executionType': ?executionType,
    };
  }

  factory ComplianceExecutionSummaryResponse.fromMap(Map<String, dynamic> map) {
    return ComplianceExecutionSummaryResponse(
      executionId: map['executionId'] == null ? null : (map['executionId']! as String).input(),
      executionTime: map['executionTime'] == null ? null : (map['executionTime']! as String).input(),
      executionType: map['executionType'] == null ? null : (map['executionType']! as String).input(),
    );
  }
}

