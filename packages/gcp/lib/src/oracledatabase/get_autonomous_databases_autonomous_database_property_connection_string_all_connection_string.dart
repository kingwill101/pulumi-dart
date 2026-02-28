// ignore_for_file: unused_element, unnecessary_cast

class GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString {
  /// The database service provides the highest level of resources to each SQL
  /// statement.
  final String high;

  /// The database service provides the least level of resources to each SQL
  /// statement.
  final String low;

  /// The database service provides a lower level of resources to each SQL
  /// statement.
  final String medium;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString].
  /// [high] The database service provides the highest level of resources to each SQL
  /// [low] The database service provides the least level of resources to each SQL
  /// [medium] The database service provides a lower level of resources to each SQL
  GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString({
    required this.high,
    required this.low,
    required this.medium,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['high'] = high;
    map['low'] = low;
    map['medium'] = medium;
    return map;
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString.fromMap(
      Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString(
      high: map['high'] as String,
      low: map['low'] as String,
      medium: map['medium'] as String,
    );
  }
}
