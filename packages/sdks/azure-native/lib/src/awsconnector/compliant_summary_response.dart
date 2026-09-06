// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'severity_summary_response.dart';

/// Definition of CompliantSummary
class CompliantSummaryResponse {
  /// &lt;p&gt;The total number of resources that are compliant.&lt;/p&gt;
  final pulumi.Input<int?>? compliantCount;
  /// &lt;p&gt;A summary of the compliance severity by compliance type.&lt;/p&gt;
  final pulumi.Input<SeveritySummaryResponse?>? severitySummary;

  /// Creates a new [CompliantSummaryResponse].
  /// [compliantCount] &lt;p&gt;The total number of resources that are compliant.&lt;/p&gt;
  /// [severitySummary] &lt;p&gt;A summary of the compliance severity by compliance type.&lt;/p&gt;
  const CompliantSummaryResponse({
    this.compliantCount,
    this.severitySummary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compliantCount': ?compliantCount,
      'severitySummary': ?pulumi.Input.mapOptionalInputValue<SeveritySummaryResponse, Map<String, dynamic>>(severitySummary, (value) => value.toMap()),
    };
  }

  factory CompliantSummaryResponse.fromMap(Map<String, dynamic> map) {
    return CompliantSummaryResponse(
      compliantCount: (() { final guardedValue = map['compliantCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      severitySummary: (() { final guardedValue = map['severitySummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SeveritySummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
