// ignore_for_file: unused_element, unnecessary_cast

import 'filter_protocol_version.dart';

/// Filter matches L4 traffic.
class Filter {
  /// Optional. The destination IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  final String? destRange;

  /// Optional. The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  final String? ipProtocol;

  /// Internet protocol versions this policy-based route applies to. For this version, only IPV4 is supported.
  final FilterProtocolVersion protocolVersion;

  /// Optional. The source IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  final String? srcRange;

  /// Creates a new [Filter].
  /// [destRange] Optional. The destination IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  /// [ipProtocol] Optional. The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  /// [protocolVersion] Internet protocol versions this policy-based route applies to. For this version, only IPV4 is supported.
  /// [srcRange] Optional. The source IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  Filter({
    this.destRange,
    this.ipProtocol,
    required this.protocolVersion,
    this.srcRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destRangeValue = destRange;
    if (destRangeValue != null) {
      map['destRange'] = destRangeValue;
    }
    final ipProtocolValue = ipProtocol;
    if (ipProtocolValue != null) {
      map['ipProtocol'] = ipProtocolValue;
    }
    map['protocolVersion'] = protocolVersion.value;
    final srcRangeValue = srcRange;
    if (srcRangeValue != null) {
      map['srcRange'] = srcRangeValue;
    }
    return map;
  }

  factory Filter.fromMap(Map<String, dynamic> map) {
    return Filter(
      destRange: map['destRange'] == null ? null : map['destRange'] as String,
      ipProtocol:
          map['ipProtocol'] == null ? null : map['ipProtocol'] as String,
      protocolVersion:
          FilterProtocolVersion.fromValue(map['protocolVersion'] as String),
      srcRange: map['srcRange'] == null ? null : map['srcRange'] as String,
    );
  }
}
