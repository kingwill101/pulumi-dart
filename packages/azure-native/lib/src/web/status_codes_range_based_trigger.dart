// ignore_for_file: unused_element, unnecessary_cast


/// Trigger based on range of status codes.
class StatusCodesRangeBasedTrigger {
  /// Request Count.
  final int? count;
  final String? path;
  /// HTTP status code.
  final String? statusCodes;
  /// Time interval.
  final String? timeInterval;

  /// Creates a new [StatusCodesRangeBasedTrigger].
  /// [count] Request Count.
  /// [path] Optional.
  /// [statusCodes] HTTP status code.
  /// [timeInterval] Time interval.
  StatusCodesRangeBasedTrigger({
    this.count,
    this.path,
    this.statusCodes,
    this.timeInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'path': ?path,
      'statusCodes': ?statusCodes,
      'timeInterval': ?timeInterval,
    };
  }

  factory StatusCodesRangeBasedTrigger.fromMap(Map<String, dynamic> map) {
    return StatusCodesRangeBasedTrigger(
      count: map['count'] == null ? null : map['count'] as int,
      path: map['path'] == null ? null : map['path'] as String,
      statusCodes: map['statusCodes'] == null ? null : map['statusCodes'] as String,
      timeInterval: map['timeInterval'] == null ? null : map['timeInterval'] as String,
    );
  }
}

