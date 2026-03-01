// ignore_for_file: unused_element, unnecessary_cast


/// Trigger based on status code.
class StatusCodesBasedTriggerResponse {
  /// Request Count.
  final int? count;
  /// Request Path
  final String? path;
  /// HTTP status code.
  final int? status;
  /// Request Sub Status.
  final int? subStatus;
  /// Time interval.
  final String? timeInterval;
  /// Win32 error code.
  final int? win32Status;

  /// Creates a new [StatusCodesBasedTriggerResponse].
  /// [count] Request Count.
  /// [path] Request Path
  /// [status] HTTP status code.
  /// [subStatus] Request Sub Status.
  /// [timeInterval] Time interval.
  /// [win32Status] Win32 error code.
  StatusCodesBasedTriggerResponse({
    this.count,
    this.path,
    this.status,
    this.subStatus,
    this.timeInterval,
    this.win32Status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'path': ?path,
      'status': ?status,
      'subStatus': ?subStatus,
      'timeInterval': ?timeInterval,
      'win32Status': ?win32Status,
    };
  }

  factory StatusCodesBasedTriggerResponse.fromMap(Map<String, dynamic> map) {
    return StatusCodesBasedTriggerResponse(
      count: map['count'] == null ? null : map['count'] as int,
      path: map['path'] == null ? null : map['path'] as String,
      status: map['status'] == null ? null : map['status'] as int,
      subStatus: map['subStatus'] == null ? null : map['subStatus'] as int,
      timeInterval: map['timeInterval'] == null ? null : map['timeInterval'] as String,
      win32Status: map['win32Status'] == null ? null : map['win32Status'] as int,
    );
  }
}

