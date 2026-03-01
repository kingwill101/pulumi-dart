// ignore_for_file: unused_element, unnecessary_cast

import 'severity_summary_response.dart';

/// Definition of NonCompliantSummary
class NonCompliantSummaryResponse {
  /// <p>The total number of compliance items that aren't compliant.</p>
  final int? nonCompliantCount;
  /// <p>A summary of the non-compliance severity by compliance type</p>
  final SeveritySummaryResponse? severitySummary;

  /// Creates a new [NonCompliantSummaryResponse].
  /// [nonCompliantCount] <p>The total number of compliance items that aren't compliant.</p>
  /// [severitySummary] <p>A summary of the non-compliance severity by compliance type</p>
  NonCompliantSummaryResponse({
    this.nonCompliantCount,
    this.severitySummary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonCompliantCount': ?nonCompliantCount,
      'severitySummary': ?severitySummary == null ? null : severitySummary!.toMap(),
    };
  }

  factory NonCompliantSummaryResponse.fromMap(Map<String, dynamic> map) {
    return NonCompliantSummaryResponse(
      nonCompliantCount: map['nonCompliantCount'] == null ? null : map['nonCompliantCount'] as int,
      severitySummary: map['severitySummary'] == null ? null : SeveritySummaryResponse.fromMap((map['severitySummary'] as Map).cast<String, dynamic>()),
    );
  }
}

