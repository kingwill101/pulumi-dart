// ignore_for_file: unused_element, unnecessary_cast

import 'severity_summary.dart';

/// Definition of NonCompliantSummary
class NonCompliantSummary {
  /// <p>The total number of compliance items that aren't compliant.</p>
  final int? nonCompliantCount;
  /// <p>A summary of the non-compliance severity by compliance type</p>
  final SeveritySummary? severitySummary;

  /// Creates a new [NonCompliantSummary].
  /// [nonCompliantCount] <p>The total number of compliance items that aren't compliant.</p>
  /// [severitySummary] <p>A summary of the non-compliance severity by compliance type</p>
  NonCompliantSummary({
    this.nonCompliantCount,
    this.severitySummary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonCompliantCount': ?nonCompliantCount,
      'severitySummary': ?severitySummary == null ? null : severitySummary!.toMap(),
    };
  }

  factory NonCompliantSummary.fromMap(Map<String, dynamic> map) {
    return NonCompliantSummary(
      nonCompliantCount: map['nonCompliantCount'] == null ? null : map['nonCompliantCount'] as int,
      severitySummary: map['severitySummary'] == null ? null : SeveritySummary.fromMap((map['severitySummary'] as Map).cast<String, dynamic>()),
    );
  }
}

