// ignore_for_file: unused_element, unnecessary_cast

class JobLatestCreatedExecution {
  /// (Output)
  /// Completion timestamp of the execution.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? completionTime;

  /// (Output)
  /// Creation timestamp of the execution.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? createTime;

  /// Name of the Job.
  final String? name;

  /// Creates a new [JobLatestCreatedExecution].
  /// [completionTime] (Output)
  /// [createTime] (Output)
  /// [name] Name of the Job.
  JobLatestCreatedExecution({this.completionTime, this.createTime, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTime': ?completionTime,
      'createTime': ?createTime,
      'name': ?name,
    };
  }

  factory JobLatestCreatedExecution.fromMap(Map<String, dynamic> map) {
    return JobLatestCreatedExecution(
      completionTime: map['completionTime'] == null
          ? null
          : map['completionTime'] as String,
      createTime: map['createTime'] == null
          ? null
          : map['createTime'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
