// ignore_for_file: unused_element, unnecessary_cast


class AppTimeZoneSettings {
  /// The time zone of the app from the time zone database, e.g., America/Los_Angeles, Europe/Paris.
  final String? timeZone;

  /// Creates a new [AppTimeZoneSettings].
  /// [timeZone] The time zone of the app from the time zone database, e.g., America/Los_Angeles, Europe/Paris.
  AppTimeZoneSettings({
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeZone': ?timeZone,
    };
  }

  factory AppTimeZoneSettings.fromMap(Map<String, dynamic> map) {
    return AppTimeZoneSettings(
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

