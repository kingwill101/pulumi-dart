// ignore_for_file: unused_element, unnecessary_cast

import 'severity_summary_response.dart';

/// Definition of CompliantSummary
class CompliantSummaryResponse {
  /// <p>The total number of resources that are compliant.</p>
  final int? compliantCount;
  /// <p>A summary of the compliance severity by compliance type.</p>
  final SeveritySummaryResponse? severitySummary;

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
      'severitySummary': ?severitySummary == null ? null : severitySummary!.toMap(),
    };
  }

  factory CompliantSummaryResponse.fromMap(Map<String, dynamic> map) {
    return CompliantSummaryResponse(
      compliantCount: map['compliantCount'] == null ? null : map['compliantCount'] as int,
      severitySummary: map['severitySummary'] == null ? null : SeveritySummaryResponse.fromMap((map['severitySummary'] as Map).cast<String, dynamic>()),
    );
  }
}

