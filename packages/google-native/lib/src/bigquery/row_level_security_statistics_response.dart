// ignore_for_file: unused_element, unnecessary_cast

class RowLevelSecurityStatisticsResponse {
  /// [Preview] Whether any accessed data was protected by row access policies.
  final bool rowLevelSecurityApplied;

  /// Creates a new [RowLevelSecurityStatisticsResponse].
  /// [rowLevelSecurityApplied] [Preview] Whether any accessed data was protected by row access policies.
  RowLevelSecurityStatisticsResponse({required this.rowLevelSecurityApplied});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rowLevelSecurityApplied': rowLevelSecurityApplied,
    };
  }

  factory RowLevelSecurityStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return RowLevelSecurityStatisticsResponse(
      rowLevelSecurityApplied: map['rowLevelSecurityApplied'] as bool,
    );
  }
}
