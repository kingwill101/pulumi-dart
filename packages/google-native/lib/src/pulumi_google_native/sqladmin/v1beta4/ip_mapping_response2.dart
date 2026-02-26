// ignore_for_file: unused_element, unnecessary_cast

/// Database instance IP mapping
class IpMappingResponse2 {
  /// The IP address assigned.
  final String ipAddress;

  /// The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`. This field is only available when the IP is scheduled to be retired.
  final String timeToRetire;

  /// The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.
  final String type;

  IpMappingResponse2({
    required this.ipAddress,
    required this.timeToRetire,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['timeToRetire'] = timeToRetire;
    map['type'] = type;
    return map;
  }

  factory IpMappingResponse2.fromMap(Map<String, dynamic> map) {
    return IpMappingResponse2(
      ipAddress: map['ipAddress'] as String,
      timeToRetire: map['timeToRetire'] as String,
      type: map['type'] as String,
    );
  }
}
