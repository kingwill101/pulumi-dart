// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionTimeout {
  /// Time duration in seconds after which AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> seconds.
  final int? attemptDurationSeconds;

  JobDefinitionTimeout({
    this.attemptDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attemptDurationSecondsValue = attemptDurationSeconds;
    if (attemptDurationSecondsValue != null) {
      map['attemptDurationSeconds'] = attemptDurationSecondsValue;
    }
    return map;
  }

  factory JobDefinitionTimeout.fromMap(Map<String, dynamic> map) {
    return JobDefinitionTimeout(
      attemptDurationSeconds: map['attemptDurationSeconds'] == null
          ? null
          : map['attemptDurationSeconds'] as int,
    );
  }
}
