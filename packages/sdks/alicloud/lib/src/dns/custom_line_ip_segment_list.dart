// ignore_for_file: unused_element, unnecessary_cast


class CustomLineIpSegmentList {
  /// The end IP address of the CIDR block.
  final String endIp;
  /// The start IP address of the CIDR block.
  final String startIp;

  /// Creates a new [CustomLineIpSegmentList].
  /// [endIp] The end IP address of the CIDR block.
  /// [startIp] The start IP address of the CIDR block.
  CustomLineIpSegmentList({
    required this.endIp,
    required this.startIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIp': endIp,
      'startIp': startIp,
    };
  }

  factory CustomLineIpSegmentList.fromMap(Map<String, dynamic> map) {
    return CustomLineIpSegmentList(
      endIp: map['endIp'] as String,
      startIp: map['startIp'] as String,
    );
  }
}

