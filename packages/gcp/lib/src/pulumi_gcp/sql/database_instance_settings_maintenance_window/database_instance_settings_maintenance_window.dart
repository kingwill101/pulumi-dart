// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsMaintenanceWindow {
  /// Day of week (`1-7`), starting on Monday
  final int? day;

  /// Hour of day (`0-23`), ignored if <span pulumi-lang-nodejs="`day`" pulumi-lang-dotnet="`Day`" pulumi-lang-go="`day`" pulumi-lang-python="`day`" pulumi-lang-yaml="`day`" pulumi-lang-java="`day`">`day`</span> not set
  final int? hour;

  /// Receive updates after one week (<span pulumi-lang-nodejs="`canary`" pulumi-lang-dotnet="`Canary`" pulumi-lang-go="`canary`" pulumi-lang-python="`canary`" pulumi-lang-yaml="`canary`" pulumi-lang-java="`canary`">`canary`</span>) or after two weeks (<span pulumi-lang-nodejs="`stable`" pulumi-lang-dotnet="`Stable`" pulumi-lang-go="`stable`" pulumi-lang-python="`stable`" pulumi-lang-yaml="`stable`" pulumi-lang-java="`stable`">`stable`</span>) or after five weeks (<span pulumi-lang-nodejs="`week5`" pulumi-lang-dotnet="`Week5`" pulumi-lang-go="`week5`" pulumi-lang-python="`week5`" pulumi-lang-yaml="`week5`" pulumi-lang-java="`week5`">`week5`</span>) of notification.
  final String? updateTrack;

  DatabaseInstanceSettingsMaintenanceWindow({
    this.day,
    this.hour,
    this.updateTrack,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayValue = day;
    if (dayValue != null) {
      map['day'] = dayValue;
    }
    final hourValue = hour;
    if (hourValue != null) {
      map['hour'] = hourValue;
    }
    final updateTrackValue = updateTrack;
    if (updateTrackValue != null) {
      map['updateTrack'] = updateTrackValue;
    }
    return map;
  }

  factory DatabaseInstanceSettingsMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsMaintenanceWindow(
      day: map['day'] == null ? null : map['day'] as int,
      hour: map['hour'] == null ? null : map['hour'] as int,
      updateTrack:
          map['updateTrack'] == null ? null : map['updateTrack'] as String,
    );
  }
}
