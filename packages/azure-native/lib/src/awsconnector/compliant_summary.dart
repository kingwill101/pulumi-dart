// ignore_for_file: unused_element, unnecessary_cast

import 'severity_summary.dart';

/// Definition of CompliantSummary
class CompliantSummary {
  /// <p>The total number of resources that are compliant.</p>
  final int? compliantCount;
  /// <p>A summary of the compliance severity by compliance type.</p>
  final SeveritySummary? severitySummary;

  /// Creates a new [CompliantSummary].
  /// [compliantCount] <p>The total number of resources that are compliant.</p>
  /// [severitySummary] <p>A summary of the compliance severity by compliance type.</p>
  CompliantSummary({
    this.compliantCount,
    this.severitySummary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compliantCount': ?compliantCount,
      'severitySummary': ?severitySummary == null ? null : severitySummary!.toMap(),
    };
  }

  factory CompliantSummary.fromMap(Map<String, dynamic> map) {
    return CompliantSummary(
      compliantCount: map['compliantCount'] == null ? null : map['compliantCount'] as int,
      severitySummary: map['severitySummary'] == null ? null : SeveritySummary.fromMap((map['severitySummary'] as Map).cast<String, dynamic>()),
    );
  }
}

