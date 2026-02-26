// ignore_for_file: unused_element, unnecessary_cast

/// Write a Data Access (Gin) log
class DataAccessOptionsResponse2 {
  final String logMode;

  DataAccessOptionsResponse2({
    required this.logMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logMode'] = logMode;
    return map;
  }

  factory DataAccessOptionsResponse2.fromMap(Map<String, dynamic> map) {
    return DataAccessOptionsResponse2(
      logMode: map['logMode'] as String,
    );
  }
}
