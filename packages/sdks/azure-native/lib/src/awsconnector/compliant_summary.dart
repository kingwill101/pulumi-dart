// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'severity_summary.dart';

/// Definition of CompliantSummary
class CompliantSummary {
  /// &lt;p&gt;The total number of resources that are compliant.&lt;/p&gt;
  final pulumi.Input<int>? compliantCount;
  /// &lt;p&gt;A summary of the compliance severity by compliance type.&lt;/p&gt;
  final pulumi.Input<SeveritySummary>? severitySummary;

  /// Creates a new [CompliantSummary].
  /// [compliantCount] &lt;p&gt;The total number of resources that are compliant.&lt;/p&gt;
  /// [severitySummary] &lt;p&gt;A summary of the compliance severity by compliance type.&lt;/p&gt;
  const CompliantSummary({
    this.compliantCount,
    this.severitySummary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compliantCount': ?compliantCount,
      'severitySummary': ?pulumi.Input.mapOptionalInputValue<SeveritySummary, Map<String, dynamic>>(severitySummary, (value) => value.toMap()),
    };
  }

  factory CompliantSummary.fromMap(Map<String, dynamic> map) {
    return CompliantSummary(
      compliantCount: (() { final guardedValue = map['compliantCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      severitySummary: (() { final guardedValue = map['severitySummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SeveritySummary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

