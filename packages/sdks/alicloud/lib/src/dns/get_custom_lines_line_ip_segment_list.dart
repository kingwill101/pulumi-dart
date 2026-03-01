// ignore_for_file: unused_element, unnecessary_cast


class GetCustomLinesLineIpSegmentList {
  /// The end IP address of the CIDR block.
  final String endIp;
  /// The start IP address of the CIDR block.
  final String startIp;

  /// Creates a new [GetCustomLinesLineIpSegmentList].
  /// [endIp] The end IP address of the CIDR block.
  /// [startIp] The start IP address of the CIDR block.
  GetCustomLinesLineIpSegmentList({
    required this.endIp,
    required this.startIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIp': endIp,
      'startIp': startIp,
    };
  }

  factory GetCustomLinesLineIpSegmentList.fromMap(Map<String, dynamic> map) {
    return GetCustomLinesLineIpSegmentList(
      endIp: map['endIp'] as String,
      startIp: map['startIp'] as String,
    );
  }
}

