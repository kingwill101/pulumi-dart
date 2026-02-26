// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceOutlierDetectionBaseEjectionTime {
  /// Span of time that's a fraction of a second at nanosecond resolution. Durations
  /// less than one second are represented with a 0 <span pulumi-lang-nodejs="`seconds`" pulumi-lang-dotnet="`Seconds`" pulumi-lang-go="`seconds`" pulumi-lang-python="`seconds`" pulumi-lang-yaml="`seconds`" pulumi-lang-java="`seconds`">`seconds`</span> field and a positive
  /// <span pulumi-lang-nodejs="`nanos`" pulumi-lang-dotnet="`Nanos`" pulumi-lang-go="`nanos`" pulumi-lang-python="`nanos`" pulumi-lang-yaml="`nanos`" pulumi-lang-java="`nanos`">`nanos`</span> field. Must be from 0 to 999,999,999 inclusive.
  final int? nanos;

  /// Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
  /// inclusive.
  final int seconds;

  BackendServiceOutlierDetectionBaseEjectionTime({
    this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nanosValue = nanos;
    if (nanosValue != null) {
      map['nanos'] = nanosValue;
    }
    map['seconds'] = seconds;
    return map;
  }

  factory BackendServiceOutlierDetectionBaseEjectionTime.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceOutlierDetectionBaseEjectionTime(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] as int,
    );
  }
}
