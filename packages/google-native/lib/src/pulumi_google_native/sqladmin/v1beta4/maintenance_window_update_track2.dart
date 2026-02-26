/// Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
enum MaintenanceWindowUpdateTrack2 {
  sqlUpdateTrackUnspecified("SQL_UPDATE_TRACK_UNSPECIFIED"),
  canary("canary"),
  stable("stable"),
  week5("week5");

  const MaintenanceWindowUpdateTrack2(this.value);
  final String value;

  static MaintenanceWindowUpdateTrack2 fromValue(String value) {
    for (final item in MaintenanceWindowUpdateTrack2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceWindowUpdateTrack2 value: $value');
  }
}
