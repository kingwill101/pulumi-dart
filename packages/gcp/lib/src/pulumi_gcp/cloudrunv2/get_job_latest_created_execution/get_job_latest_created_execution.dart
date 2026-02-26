// ignore_for_file: unused_element, unnecessary_cast

class GetJobLatestCreatedExecution {
  /// Completion timestamp of the execution.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String completionTime;

  /// Creation timestamp of the execution.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String createTime;

  /// The name of the Cloud Run v2 Job.
  final String name;

  GetJobLatestCreatedExecution({
    required this.completionTime,
    required this.createTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['completionTime'] = completionTime;
    map['createTime'] = createTime;
    map['name'] = name;
    return map;
  }

  factory GetJobLatestCreatedExecution.fromMap(Map<String, dynamic> map) {
    return GetJobLatestCreatedExecution(
      completionTime: map['completionTime'] as String,
      createTime: map['createTime'] as String,
      name: map['name'] as String,
    );
  }
}
