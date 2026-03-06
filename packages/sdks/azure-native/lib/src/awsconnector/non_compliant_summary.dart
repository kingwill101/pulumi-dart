// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'severity_summary.dart';

/// Definition of NonCompliantSummary
class NonCompliantSummary {
  /// &lt;p&gt;The total number of compliance items that aren't compliant.&lt;/p&gt;
  final pulumi.Input<int>? nonCompliantCount;
  /// &lt;p&gt;A summary of the non-compliance severity by compliance type&lt;/p&gt;
  final pulumi.Input<SeveritySummary>? severitySummary;

  /// Creates a new [NonCompliantSummary].
  /// [nonCompliantCount] &lt;p&gt;The total number of compliance items that aren't compliant.&lt;/p&gt;
  /// [severitySummary] &lt;p&gt;A summary of the non-compliance severity by compliance type&lt;/p&gt;
  const NonCompliantSummary({
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
      nonCompliantCount: (() { final guardedValue = map['nonCompliantCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      severitySummary: (() { final guardedValue = map['severitySummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SeveritySummary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

