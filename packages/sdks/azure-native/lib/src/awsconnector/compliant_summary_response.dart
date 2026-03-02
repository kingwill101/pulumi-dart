// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'severity_summary_response.dart';

/// Definition of CompliantSummary
class CompliantSummaryResponse {
  /// <p>The total number of resources that are compliant.</p>
  final pulumi.Input<int>? compliantCount;
  /// <p>A summary of the compliance severity by compliance type.</p>
  final pulumi.Input<SeveritySummaryResponse>? severitySummary;

  /// Creates a new [CompliantSummaryResponse].
  /// [compliantCount] <p>The total number of resources that are compliant.</p>
  /// [severitySummary] <p>A summary of the compliance severity by compliance type.</p>
  CompliantSummaryResponse({
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
      compliantCount: map['compliantCount'] == null ? null : (map['compliantCount']! as int).input(),
      severitySummary: map['severitySummary'] == null ? null : (SeveritySummaryResponse.fromMap((map['severitySummary']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

