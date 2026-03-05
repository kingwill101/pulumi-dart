// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reason and code for the compliance of the guest configuration assignment resource.
class AssignmentReportResourceComplianceReasonResponse {
  /// Code for the compliance of the guest configuration assignment resource.
  final pulumi.Input<String> code;
  /// Reason for the compliance of the guest configuration assignment resource.
  final pulumi.Input<String> phrase;

  /// Creates a new [AssignmentReportResourceComplianceReasonResponse].
  /// [code] Code for the compliance of the guest configuration assignment resource.
  /// [phrase] Reason for the compliance of the guest configuration assignment resource.
  AssignmentReportResourceComplianceReasonResponse({
    required this.code,
    required this.phrase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'phrase': phrase,
    };
  }

  factory AssignmentReportResourceComplianceReasonResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentReportResourceComplianceReasonResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      phrase: pulumi.Input.fromValue(map['phrase'] as String),
    );
  }
}

