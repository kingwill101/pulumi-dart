// ignore_for_file: unused_element, unnecessary_cast

class SystraceSetup {
  /// Systrace duration in seconds. Should be between 1 and 30 seconds. 0 disables systrace.
  final int? durationSeconds;

  SystraceSetup({
    this.durationSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final durationSecondsValue = durationSeconds;
    if (durationSecondsValue != null) {
      map['durationSeconds'] = durationSecondsValue;
    }
    return map;
  }

  factory SystraceSetup.fromMap(Map<String, dynamic> map) {
    return SystraceSetup(
      durationSeconds:
          map['durationSeconds'] == null ? null : map['durationSeconds'] as int,
    );
  }
}
