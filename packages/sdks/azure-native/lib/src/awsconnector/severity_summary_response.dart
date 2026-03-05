// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SeveritySummary
class SeveritySummaryResponse {
  /// &lt;p&gt;The total number of resources or compliance items that have a severity level of &lt;code&gt;Critical&lt;/code&gt;. Critical severity is determined by the organization that published the compliance items.&lt;/p&gt;
  final pulumi.Input<int>? criticalCount;
  /// &lt;p&gt;The total number of resources or compliance items that have a severity level of high. High severity is determined by the organization that published the compliance items.&lt;/p&gt;
  final pulumi.Input<int>? highCount;
  /// &lt;p&gt;The total number of resources or compliance items that have a severity level of informational. Informational severity is determined by the organization that published the compliance items.&lt;/p&gt;
  final pulumi.Input<int>? informationalCount;
  /// &lt;p&gt;The total number of resources or compliance items that have a severity level of low. Low severity is determined by the organization that published the compliance items.&lt;/p&gt;
  final pulumi.Input<int>? lowCount;
  /// &lt;p&gt;The total number of resources or compliance items that have a severity level of medium. Medium severity is determined by the organization that published the compliance items.&lt;/p&gt;
  final pulumi.Input<int>? mediumCount;
  /// &lt;p&gt;The total number of resources or compliance items that have a severity level of unspecified. Unspecified severity is determined by the organization that published the compliance items.&lt;/p&gt;
  final pulumi.Input<int>? unspecifiedCount;

  /// Creates a new [SeveritySummaryResponse].
  /// [criticalCount] &lt;p&gt;The total number of resources or compliance items that have a severity level of &lt;code&gt;Critical&lt;/code&gt;. Critical severity is determined by the organization that published the compliance items.&lt;/p&gt;
  /// [highCount] &lt;p&gt;The total number of resources or compliance items that have a severity level of high. High severity is determined by the organization that published the compliance items.&lt;/p&gt;
  /// [informationalCount] &lt;p&gt;The total number of resources or compliance items that have a severity level of informational. Informational severity is determined by the organization that published the compliance items.&lt;/p&gt;
  /// [lowCount] &lt;p&gt;The total number of resources or compliance items that have a severity level of low. Low severity is determined by the organization that published the compliance items.&lt;/p&gt;
  /// [mediumCount] &lt;p&gt;The total number of resources or compliance items that have a severity level of medium. Medium severity is determined by the organization that published the compliance items.&lt;/p&gt;
  /// [unspecifiedCount] &lt;p&gt;The total number of resources or compliance items that have a severity level of unspecified. Unspecified severity is determined by the organization that published the compliance items.&lt;/p&gt;
  SeveritySummaryResponse({
    this.criticalCount,
    this.highCount,
    this.informationalCount,
    this.lowCount,
    this.mediumCount,
    this.unspecifiedCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criticalCount': ?criticalCount,
      'highCount': ?highCount,
      'informationalCount': ?informationalCount,
      'lowCount': ?lowCount,
      'mediumCount': ?mediumCount,
      'unspecifiedCount': ?unspecifiedCount,
    };
  }

  factory SeveritySummaryResponse.fromMap(Map<String, dynamic> map) {
    return SeveritySummaryResponse(
      criticalCount: (() { final guardedValue = map['criticalCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      highCount: (() { final guardedValue = map['highCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      informationalCount: (() { final guardedValue = map['informationalCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lowCount: (() { final guardedValue = map['lowCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mediumCount: (() { final guardedValue = map['mediumCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      unspecifiedCount: (() { final guardedValue = map['unspecifiedCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

