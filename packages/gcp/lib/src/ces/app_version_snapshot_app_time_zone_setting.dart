// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAppTimeZoneSetting {
  /// (Output)
  /// The time zone of the app from the time zone database, e.g., America/Los_Angeles, Europe/Paris.
  final String? timeZone;

  /// Creates a new [AppVersionSnapshotAppTimeZoneSetting].
  /// [timeZone] (Output)
  AppVersionSnapshotAppTimeZoneSetting({this.timeZone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'timeZone': ?timeZone};
  }

  factory AppVersionSnapshotAppTimeZoneSetting.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotAppTimeZoneSetting(
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}
