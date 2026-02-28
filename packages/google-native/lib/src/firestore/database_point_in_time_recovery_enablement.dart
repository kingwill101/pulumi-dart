/// Whether to enable the PITR feature on this database.
enum DatabasePointInTimeRecoveryEnablement {
  pointInTimeRecoveryEnablementUnspecified("POINT_IN_TIME_RECOVERY_ENABLEMENT_UNSPECIFIED"),
  pointInTimeRecoveryEnabled("POINT_IN_TIME_RECOVERY_ENABLED"),
  pointInTimeRecoveryDisabled("POINT_IN_TIME_RECOVERY_DISABLED");

  const DatabasePointInTimeRecoveryEnablement(this.value);
  final String value;

  static DatabasePointInTimeRecoveryEnablement fromValue(String value) {
    for (final item in DatabasePointInTimeRecoveryEnablement.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabasePointInTimeRecoveryEnablement value: $value');
  }
}

