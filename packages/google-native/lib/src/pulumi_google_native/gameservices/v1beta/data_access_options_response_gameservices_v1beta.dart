// ignore_for_file: unused_element, unnecessary_cast

/// Write a Data Access (Gin) log
class DataAccessOptionsResponseGameservicesV1beta {
  final String logMode;

  DataAccessOptionsResponseGameservicesV1beta({
    required this.logMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logMode'] = logMode;
    return map;
  }

  factory DataAccessOptionsResponseGameservicesV1beta.fromMap(
      Map<String, dynamic> map) {
    return DataAccessOptionsResponseGameservicesV1beta(
      logMode: map['logMode'] as String,
    );
  }
}
