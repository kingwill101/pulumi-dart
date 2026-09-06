// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The overview of the compliance result for one report.
class OverviewStatusResponse {
  /// The count of all failed control.
  final pulumi.Input<int> failedCount;
  /// The count of all manual control.
  final pulumi.Input<int> manualCount;
  /// The count of all not applicable control.
  final pulumi.Input<int> notApplicableCount;
  /// The count of all passed control.
  final pulumi.Input<int> passedCount;
  /// The count of all pending for approval control.
  final pulumi.Input<int> pendingCount;

  /// Creates a new [OverviewStatusResponse].
  /// [failedCount] The count of all failed control.
  /// [manualCount] The count of all manual control.
  /// [notApplicableCount] The count of all not applicable control.
  /// [passedCount] The count of all passed control.
  /// [pendingCount] The count of all pending for approval control.
  const OverviewStatusResponse({
    required this.failedCount,
    required this.manualCount,
    required this.notApplicableCount,
    required this.passedCount,
    required this.pendingCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedCount': failedCount,
      'manualCount': manualCount,
      'notApplicableCount': notApplicableCount,
      'passedCount': passedCount,
      'pendingCount': pendingCount,
    };
  }

  factory OverviewStatusResponse.fromMap(Map<String, dynamic> map) {
    return OverviewStatusResponse(
      failedCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['failedCount'])),
      manualCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['manualCount'])),
      notApplicableCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['notApplicableCount'])),
      passedCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['passedCount'])),
      pendingCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['pendingCount'])),
    );
  }
}
