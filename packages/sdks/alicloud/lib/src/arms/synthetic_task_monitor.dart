// ignore_for_file: unused_element, unnecessary_cast


class SyntheticTaskMonitor {
  /// The city code of monitor.
  final String cityCode;
  /// The type of monitor.
  final int clientType;
  /// The operator code of monitor.
  final String operatorCode;

  /// Creates a new [SyntheticTaskMonitor].
  /// [cityCode] The city code of monitor.
  /// [clientType] The type of monitor.
  /// [operatorCode] The operator code of monitor.
  SyntheticTaskMonitor({
    required this.cityCode,
    required this.clientType,
    required this.operatorCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cityCode': cityCode,
      'clientType': clientType,
      'operatorCode': operatorCode,
    };
  }

  factory SyntheticTaskMonitor.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitor(
      cityCode: map['cityCode'] as String,
      clientType: map['clientType'] as int,
      operatorCode: map['operatorCode'] as String,
    );
  }
}

