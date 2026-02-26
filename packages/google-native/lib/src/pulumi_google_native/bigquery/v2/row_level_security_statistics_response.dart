// ignore_for_file: unused_element, unnecessary_cast

class RowLevelSecurityStatisticsResponse {
  /// [Preview] Whether any accessed data was protected by row access policies.
  final bool rowLevelSecurityApplied;

  RowLevelSecurityStatisticsResponse({
    required this.rowLevelSecurityApplied,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rowLevelSecurityApplied'] = rowLevelSecurityApplied;
    return map;
  }

  factory RowLevelSecurityStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return RowLevelSecurityStatisticsResponse(
      rowLevelSecurityApplied: map['rowLevelSecurityApplied'] as bool,
    );
  }
}
