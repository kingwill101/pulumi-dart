// ignore_for_file: unused_element, unnecessary_cast


/// IP address range configuration.
class IpAddressRange {
  /// End IP address.
  final String endIp;
  /// Start IP address.
  final String startIp;

  /// Creates a new [IpAddressRange].
  /// [endIp] End IP address.
  /// [startIp] Start IP address.
  IpAddressRange({
    required this.endIp,
    required this.startIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIp': endIp,
      'startIp': startIp,
    };
  }

  factory IpAddressRange.fromMap(Map<String, dynamic> map) {
    return IpAddressRange(
      endIp: map['endIp'] as String,
      startIp: map['startIp'] as String,
    );
  }
}

