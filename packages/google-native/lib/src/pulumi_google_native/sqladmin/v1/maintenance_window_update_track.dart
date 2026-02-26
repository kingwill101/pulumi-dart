/// Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
enum MaintenanceWindowUpdateTrack {
  sqlUpdateTrackUnspecified("SQL_UPDATE_TRACK_UNSPECIFIED"),
  canary("canary"),
  stable("stable"),
  week5("week5");

  const MaintenanceWindowUpdateTrack(this.value);
  final String value;

  static MaintenanceWindowUpdateTrack fromValue(String value) {
    for (final item in MaintenanceWindowUpdateTrack.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceWindowUpdateTrack value: $value');
  }
}
