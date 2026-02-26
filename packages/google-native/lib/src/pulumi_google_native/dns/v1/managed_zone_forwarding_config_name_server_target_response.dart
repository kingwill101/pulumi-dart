// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneForwardingConfigNameServerTargetResponse {
  /// Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on IP address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.
  final String forwardingPath;

  /// IPv4 address of a target name server.
  final String ipv4Address;

  /// IPv6 address of a target name server. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.
  final String ipv6Address;
  final String kind;

  ManagedZoneForwardingConfigNameServerTargetResponse({
    required this.forwardingPath,
    required this.ipv4Address,
    required this.ipv6Address,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forwardingPath'] = forwardingPath;
    map['ipv4Address'] = ipv4Address;
    map['ipv6Address'] = ipv6Address;
    map['kind'] = kind;
    return map;
  }

  factory ManagedZoneForwardingConfigNameServerTargetResponse.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneForwardingConfigNameServerTargetResponse(
      forwardingPath: map['forwardingPath'] as String,
      ipv4Address: map['ipv4Address'] as String,
      ipv6Address: map['ipv6Address'] as String,
      kind: map['kind'] as String,
    );
  }
}
