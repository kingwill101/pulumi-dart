// ignore_for_file: unused_element, unnecessary_cast


/// Write a Data Access (Gin) log
class DataAccessOptionsResponseGameservicesV1beta {
  final String logMode;

  /// Creates a new [DataAccessOptionsResponseGameservicesV1beta].
  /// [logMode] Required.
  DataAccessOptionsResponseGameservicesV1beta({
    required this.logMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMode': logMode,
    };
  }

  factory DataAccessOptionsResponseGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return DataAccessOptionsResponseGameservicesV1beta(
      logMode: map['logMode'] as String,
    );
  }
}

