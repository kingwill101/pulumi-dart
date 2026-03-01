// ignore_for_file: unused_element, unnecessary_cast


/// The port range.
class PortRangeResponse {
  /// The maximum port that is included in the range. It should be ranged from 1 to 65535, and be greater than or equal to portStart.
  final int? portEnd;
  /// The minimum port that is included in the range. It should be ranged from 1 to 65535, and be less than or equal to portEnd.
  final int? portStart;
  /// The network protocol of the port.
  final String? protocol;

  /// Creates a new [PortRangeResponse].
  /// [portEnd] The maximum port that is included in the range. It should be ranged from 1 to 65535, and be greater than or equal to portStart.
  /// [portStart] The minimum port that is included in the range. It should be ranged from 1 to 65535, and be less than or equal to portEnd.
  /// [protocol] The network protocol of the port.
  PortRangeResponse({
    this.portEnd,
    this.portStart,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portEnd': ?portEnd,
      'portStart': ?portStart,
      'protocol': ?protocol,
    };
  }

  factory PortRangeResponse.fromMap(Map<String, dynamic> map) {
    return PortRangeResponse(
      portEnd: map['portEnd'] == null ? null : map['portEnd'] as int,
      portStart: map['portStart'] == null ? null : map['portStart'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

