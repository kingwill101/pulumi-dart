// ignore_for_file: unused_element, unnecessary_cast

/// Filter matches L4 traffic.
class FilterResponseNetworkconnectivityV1 {
  /// Optional. The destination IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  final String destRange;

  /// Optional. The IP protocol that this policy-based route applies to. Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  final String ipProtocol;

  /// Internet protocol versions this policy-based route applies to. For this version, only IPV4 is supported.
  final String protocolVersion;

  /// Optional. The source IP range of outgoing packets that this policy-based route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
  final String srcRange;

  FilterResponseNetworkconnectivityV1({
    required this.destRange,
    required this.ipProtocol,
    required this.protocolVersion,
    required this.srcRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destRange'] = destRange;
    map['ipProtocol'] = ipProtocol;
    map['protocolVersion'] = protocolVersion;
    map['srcRange'] = srcRange;
    return map;
  }

  factory FilterResponseNetworkconnectivityV1.fromMap(
      Map<String, dynamic> map) {
    return FilterResponseNetworkconnectivityV1(
      destRange: map['destRange'] as String,
      ipProtocol: map['ipProtocol'] as String,
      protocolVersion: map['protocolVersion'] as String,
      srcRange: map['srcRange'] as String,
    );
  }
}
