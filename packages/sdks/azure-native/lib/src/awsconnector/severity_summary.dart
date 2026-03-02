// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SeveritySummary
class SeveritySummary {
  /// <p>The total number of resources or compliance items that have a severity level of <code>Critical</code>. Critical severity is determined by the organization that published the compliance items.</p>
  final pulumi.Input<int>? criticalCount;
  /// <p>The total number of resources or compliance items that have a severity level of high. High severity is determined by the organization that published the compliance items.</p>
  final pulumi.Input<int>? highCount;
  /// <p>The total number of resources or compliance items that have a severity level of informational. Informational severity is determined by the organization that published the compliance items.</p>
  final pulumi.Input<int>? informationalCount;
  /// <p>The total number of resources or compliance items that have a severity level of low. Low severity is determined by the organization that published the compliance items.</p>
  final pulumi.Input<int>? lowCount;
  /// <p>The total number of resources or compliance items that have a severity level of medium. Medium severity is determined by the organization that published the compliance items.</p>
  final pulumi.Input<int>? mediumCount;
  /// <p>The total number of resources or compliance items that have a severity level of unspecified. Unspecified severity is determined by the organization that published the compliance items.</p>
  final pulumi.Input<int>? unspecifiedCount;

  /// Creates a new [SeveritySummary].
  /// [criticalCount] <p>The total number of resources or compliance items that have a severity level of <code>Critical</code>. Critical severity is determined by the organization that published the compliance items.</p>
  /// [highCount] <p>The total number of resources or compliance items that have a severity level of high. High severity is determined by the organization that published the compliance items.</p>
  /// [informationalCount] <p>The total number of resources or compliance items that have a severity level of informational. Informational severity is determined by the organization that published the compliance items.</p>
  /// [lowCount] <p>The total number of resources or compliance items that have a severity level of low. Low severity is determined by the organization that published the compliance items.</p>
  /// [mediumCount] <p>The total number of resources or compliance items that have a severity level of medium. Medium severity is determined by the organization that published the compliance items.</p>
  /// [unspecifiedCount] <p>The total number of resources or compliance items that have a severity level of unspecified. Unspecified severity is determined by the organization that published the compliance items.</p>
  SeveritySummary({
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

  factory SeveritySummary.fromMap(Map<String, dynamic> map) {
    return SeveritySummary(
      criticalCount: map['criticalCount'] == null ? null : (map['criticalCount']! as int).input(),
      highCount: map['highCount'] == null ? null : (map['highCount']! as int).input(),
      informationalCount: map['informationalCount'] == null ? null : (map['informationalCount']! as int).input(),
      lowCount: map['lowCount'] == null ? null : (map['lowCount']! as int).input(),
      mediumCount: map['mediumCount'] == null ? null : (map['mediumCount']! as int).input(),
      unspecifiedCount: map['unspecifiedCount'] == null ? null : (map['unspecifiedCount']! as int).input(),
    );
  }
}

