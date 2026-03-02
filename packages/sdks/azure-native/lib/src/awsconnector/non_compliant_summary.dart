// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'severity_summary.dart';

/// Definition of NonCompliantSummary
class NonCompliantSummary {
  /// <p>The total number of compliance items that aren't compliant.</p>
  final pulumi.Input<int>? nonCompliantCount;
  /// <p>A summary of the non-compliance severity by compliance type</p>
  final pulumi.Input<SeveritySummary>? severitySummary;

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
      'severitySummary': ?pulumi.Input.mapOptionalInputValue<SeveritySummary, Map<String, dynamic>>(severitySummary, (value) => value.toMap()),
    };
  }

  factory NonCompliantSummary.fromMap(Map<String, dynamic> map) {
    return NonCompliantSummary(
      nonCompliantCount: map['nonCompliantCount'] == null ? null : (map['nonCompliantCount']! as int).input(),
      severitySummary: map['severitySummary'] == null ? null : (SeveritySummary.fromMap((map['severitySummary']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

