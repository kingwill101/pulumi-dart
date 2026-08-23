// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ComplianceExecutionSummary
class ComplianceExecutionSummaryResponse {
  /// &lt;p&gt;An ID created by the system when &lt;code&gt;PutComplianceItems&lt;/code&gt; was called. For example, &lt;code&gt;CommandID&lt;/code&gt; is a valid execution ID. You can use this ID in subsequent calls.&lt;/p&gt;
  final pulumi.Input<String>? executionId;
  /// &lt;p&gt;The time the execution ran as a datetime object that is saved in the following format: &lt;code&gt;yyyy-MM-dd'T'HH:mm:ss'Z'&lt;/code&gt; &lt;/p&gt;
  final pulumi.Input<String>? executionTime;
  /// &lt;p&gt;The type of execution. For example, &lt;code&gt;Command&lt;/code&gt; is a valid execution type.&lt;/p&gt;
  final pulumi.Input<String>? executionType;

  /// Creates a new [ComplianceExecutionSummaryResponse].
  /// [executionId] &lt;p&gt;An ID created by the system when &lt;code&gt;PutComplianceItems&lt;/code&gt; was called. For example, &lt;code&gt;CommandID&lt;/code&gt; is a valid execution ID. You can use this ID in subsequent calls.&lt;/p&gt;
  /// [executionTime] &lt;p&gt;The time the execution ran as a datetime object that is saved in the following format: &lt;code&gt;yyyy-MM-dd'T'HH:mm:ss'Z'&lt;/code&gt; &lt;/p&gt;
  /// [executionType] &lt;p&gt;The type of execution. For example, &lt;code&gt;Command&lt;/code&gt; is a valid execution type.&lt;/p&gt;
  const ComplianceExecutionSummaryResponse({
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
      executionId: (() { final guardedValue = map['executionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionTime: (() { final guardedValue = map['executionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionType: (() { final guardedValue = map['executionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
