// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SeveritySummary
class SeveritySummary {
  /// <p>The total number of resources or compliance items that have a severity level of <code>Critical</code>. Critical severity is determined by the organization that published the compliance items.</p>
  final int? criticalCount;
  /// <p>The total number of resources or compliance items that have a severity level of high. High severity is determined by the organization that published the compliance items.</p>
  final int? highCount;
  /// <p>The total number of resources or compliance items that have a severity level of informational. Informational severity is determined by the organization that published the compliance items.</p>
  final int? informationalCount;
  /// <p>The total number of resources or compliance items that have a severity level of low. Low severity is determined by the organization that published the compliance items.</p>
  final int? lowCount;
  /// <p>The total number of resources or compliance items that have a severity level of medium. Medium severity is determined by the organization that published the compliance items.</p>
  final int? mediumCount;
  /// <p>The total number of resources or compliance items that have a severity level of unspecified. Unspecified severity is determined by the organization that published the compliance items.</p>
  final int? unspecifiedCount;

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
      criticalCount: map['criticalCount'] == null ? null : map['criticalCount'] as int,
      highCount: map['highCount'] == null ? null : map['highCount'] as int,
      informationalCount: map['informationalCount'] == null ? null : map['informationalCount'] as int,
      lowCount: map['lowCount'] == null ? null : map['lowCount'] as int,
      mediumCount: map['mediumCount'] == null ? null : map['mediumCount'] as int,
      unspecifiedCount: map['unspecifiedCount'] == null ? null : map['unspecifiedCount'] as int,
    );
  }
}

