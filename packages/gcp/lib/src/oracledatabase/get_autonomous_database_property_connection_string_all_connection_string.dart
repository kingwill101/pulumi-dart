// ignore_for_file: unused_element, unnecessary_cast


class GetAutonomousDatabasePropertyConnectionStringAllConnectionString {
  /// The database service provides the highest level of resources to each SQL
  /// statement.
  final String high;
  /// The database service provides the least level of resources to each SQL
  /// statement.
  final String low;
  /// The database service provides a lower level of resources to each SQL
  /// statement.
  final String medium;

  /// Creates a new [GetAutonomousDatabasePropertyConnectionStringAllConnectionString].
  /// [high] The database service provides the highest level of resources to each SQL
  /// [low] The database service provides the least level of resources to each SQL
  /// [medium] The database service provides a lower level of resources to each SQL
  GetAutonomousDatabasePropertyConnectionStringAllConnectionString({
    required this.high,
    required this.low,
    required this.medium,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'high': high,
      'low': low,
      'medium': medium,
    };
  }

  factory GetAutonomousDatabasePropertyConnectionStringAllConnectionString.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyConnectionStringAllConnectionString(
      high: map['high'] as String,
      low: map['low'] as String,
      medium: map['medium'] as String,
    );
  }
}

