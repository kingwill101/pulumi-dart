// ignore_for_file: unused_element, unnecessary_cast


class GetManagedDatabaseLongTermRetentionPolicy {
  /// Specifies if the backups are immutable.
  final bool immutableBackupsEnabled;
  /// The monthly retention policy for an LTR backup in an ISO 8601 format.
  final String monthlyRetention;
  /// The week of year to take the yearly backup.
  final int weekOfYear;
  /// The weekly retention policy for an LTR backup in an ISO 8601 format.
  final String weeklyRetention;
  /// The yearly retention policy for an LTR backup in an ISO 8601 format.
  final String yearlyRetention;

  /// Creates a new [GetManagedDatabaseLongTermRetentionPolicy].
  /// [immutableBackupsEnabled] Specifies if the backups are immutable.
  /// [monthlyRetention] The monthly retention policy for an LTR backup in an ISO 8601 format.
  /// [weekOfYear] The week of year to take the yearly backup.
  /// [weeklyRetention] The weekly retention policy for an LTR backup in an ISO 8601 format.
  /// [yearlyRetention] The yearly retention policy for an LTR backup in an ISO 8601 format.
  GetManagedDatabaseLongTermRetentionPolicy({
    required this.immutableBackupsEnabled,
    required this.monthlyRetention,
    required this.weekOfYear,
    required this.weeklyRetention,
    required this.yearlyRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutableBackupsEnabled': immutableBackupsEnabled,
      'monthlyRetention': monthlyRetention,
      'weekOfYear': weekOfYear,
      'weeklyRetention': weeklyRetention,
      'yearlyRetention': yearlyRetention,
    };
  }

  factory GetManagedDatabaseLongTermRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return GetManagedDatabaseLongTermRetentionPolicy(
      immutableBackupsEnabled: map['immutableBackupsEnabled'] as bool,
      monthlyRetention: map['monthlyRetention'] as String,
      weekOfYear: map['weekOfYear'] as int,
      weeklyRetention: map['weeklyRetention'] as String,
      yearlyRetention: map['yearlyRetention'] as String,
    );
  }
}

