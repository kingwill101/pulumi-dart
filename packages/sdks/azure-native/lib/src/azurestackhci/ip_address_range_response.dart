// ignore_for_file: unused_element, unnecessary_cast


/// IP address range configuration.
class IpAddressRangeResponse {
  /// End IP address.
  final String endIp;
  /// Start IP address.
  final String startIp;

  /// Creates a new [IpAddressRangeResponse].
  /// [endIp] End IP address.
  /// [startIp] Start IP address.
  IpAddressRangeResponse({
    required this.endIp,
    required this.startIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIp': endIp,
      'startIp': startIp,
    };
  }

  factory IpAddressRangeResponse.fromMap(Map<String, dynamic> map) {
    return IpAddressRangeResponse(
      endIp: map['endIp'] as String,
      startIp: map['startIp'] as String,
    );
  }
}

