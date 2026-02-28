// ignore_for_file: unused_element, unnecessary_cast

class AutonomousDatabasePropertiesConnectionStringAllConnectionString {
  /// The database service provides the highest level of resources to each SQL
  /// statement.
  final String? high;

  /// The database service provides the least level of resources to each SQL
  /// statement.
  final String? low;

  /// The database service provides a lower level of resources to each SQL
  /// statement.
  final String? medium;

  /// Creates a new [AutonomousDatabasePropertiesConnectionStringAllConnectionString].
  /// [high] The database service provides the highest level of resources to each SQL
  /// [low] The database service provides the least level of resources to each SQL
  /// [medium] The database service provides a lower level of resources to each SQL
  AutonomousDatabasePropertiesConnectionStringAllConnectionString({
    this.high,
    this.low,
    this.medium,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final highValue = high;
    if (highValue != null) {
      map['high'] = highValue;
    }
    final lowValue = low;
    if (lowValue != null) {
      map['low'] = lowValue;
    }
    final mediumValue = medium;
    if (mediumValue != null) {
      map['medium'] = mediumValue;
    }
    return map;
  }

  factory AutonomousDatabasePropertiesConnectionStringAllConnectionString.fromMap(
      Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesConnectionStringAllConnectionString(
      high: map['high'] == null ? null : map['high'] as String,
      low: map['low'] == null ? null : map['low'] as String,
      medium: map['medium'] == null ? null : map['medium'] as String,
    );
  }
}
