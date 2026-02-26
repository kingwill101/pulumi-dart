// ignore_for_file: unused_element, unnecessary_cast

class ScheduleFlexibleTimeWindow {
  /// Maximum time window during which a schedule can be invoked. Ranges from <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`1440`" pulumi-lang-dotnet="`1440`" pulumi-lang-go="`1440`" pulumi-lang-python="`1440`" pulumi-lang-yaml="`1440`" pulumi-lang-java="`1440`">`1440`</span> minutes.
  final int? maximumWindowInMinutes;

  /// Determines whether the schedule is invoked within a flexible time window. One of: `OFF`, `FLEXIBLE`.
  final String mode;

  ScheduleFlexibleTimeWindow({
    this.maximumWindowInMinutes,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumWindowInMinutesValue = maximumWindowInMinutes;
    if (maximumWindowInMinutesValue != null) {
      map['maximumWindowInMinutes'] = maximumWindowInMinutesValue;
    }
    map['mode'] = mode;
    return map;
  }

  factory ScheduleFlexibleTimeWindow.fromMap(Map<String, dynamic> map) {
    return ScheduleFlexibleTimeWindow(
      maximumWindowInMinutes: map['maximumWindowInMinutes'] == null
          ? null
          : map['maximumWindowInMinutes'] as int,
      mode: map['mode'] as String,
    );
  }
}
