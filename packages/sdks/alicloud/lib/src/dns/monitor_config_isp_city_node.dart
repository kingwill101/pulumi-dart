// ignore_for_file: unused_element, unnecessary_cast


class MonitorConfigIspCityNode {
  /// The code of the city node to monitor.
  final String cityCode;
  /// The code of the Internet provider service (ISP) node to monitor.
  final String ispCode;

  /// Creates a new [MonitorConfigIspCityNode].
  /// [cityCode] The code of the city node to monitor.
  /// [ispCode] The code of the Internet provider service (ISP) node to monitor.
  MonitorConfigIspCityNode({
    required this.cityCode,
    required this.ispCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cityCode': cityCode,
      'ispCode': ispCode,
    };
  }

  factory MonitorConfigIspCityNode.fromMap(Map<String, dynamic> map) {
    return MonitorConfigIspCityNode(
      cityCode: map['cityCode'] as String,
      ispCode: map['ispCode'] as String,
    );
  }
}

