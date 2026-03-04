// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'severity_summary_response.dart';

/// Definition of NonCompliantSummary
class NonCompliantSummaryResponse {
  /// &lt;p&gt;The total number of compliance items that aren't compliant.&lt;/p&gt;
  final pulumi.Input<int>? nonCompliantCount;

  /// &lt;p&gt;A summary of the non-compliance severity by compliance type&lt;/p&gt;
  final pulumi.Input<SeveritySummaryResponse>? severitySummary;

  /// Creates a new [NonCompliantSummaryResponse].
  /// [nonCompliantCount] &lt;p&gt;The total number of compliance items that aren't compliant.&lt;/p&gt;
  /// [severitySummary] &lt;p&gt;A summary of the non-compliance severity by compliance type&lt;/p&gt;
  NonCompliantSummaryResponse({this.nonCompliantCount, this.severitySummary});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonCompliantCount': ?nonCompliantCount,
      'severitySummary':
          ?pulumi.Input.mapOptionalInputValue<
            SeveritySummaryResponse,
            Map<String, dynamic>
          >(severitySummary, (value) => value.toMap()),
    };
  }

  factory NonCompliantSummaryResponse.fromMap(Map<String, dynamic> map) {
    return NonCompliantSummaryResponse(
      nonCompliantCount: (() {
        final guardedValue = map['nonCompliantCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      severitySummary: (() {
        final guardedValue = map['severitySummary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SeveritySummaryResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
