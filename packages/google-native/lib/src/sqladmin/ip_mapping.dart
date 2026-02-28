// ignore_for_file: unused_element, unnecessary_cast

import 'ip_mapping_type.dart';

/// Database instance IP mapping
class IpMapping {
  /// The IP address assigned.
  final String? ipAddress;

  /// The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`. This field is only available when the IP is scheduled to be retired.
  final String? timeToRetire;

  /// The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.
  final IpMappingType? type;

  /// Creates a new [IpMapping].
  /// [ipAddress] The IP address assigned.
  /// [timeToRetire] The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`. This field is only available when the IP is scheduled to be retired.
  /// [type] The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.
  IpMapping({
    this.ipAddress,
    this.timeToRetire,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final timeToRetireValue = timeToRetire;
    if (timeToRetireValue != null) {
      map['timeToRetire'] = timeToRetireValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory IpMapping.fromMap(Map<String, dynamic> map) {
    return IpMapping(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      timeToRetire:
          map['timeToRetire'] == null ? null : map['timeToRetire'] as String,
      type: map['type'] == null
          ? null
          : IpMappingType.fromValue(map['type'] as String),
    );
  }
}
