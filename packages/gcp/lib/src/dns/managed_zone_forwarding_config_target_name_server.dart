// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneForwardingConfigTargetNameServer {
  /// Fully qualified domain name for the forwarding target.
  final String? domainName;

  /// Forwarding path for this TargetNameServer. If unset or `default`
  /// Cloud DNS will make forwarding decision based on address ranges,
  /// i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
  /// to the Internet. When set to `private`, Cloud DNS will always
  /// send queries through VPC for this target.
  /// Possible values are: `default`, `private`.
  final String? forwardingPath;

  /// IPv4 address of a target name server.
  /// Does not accept both fields (ipv4 & ipv6) being populated.
  final String? ipv4Address;

  /// IPv6 address of a target name server.
  /// Does not accept both fields (ipv4 & ipv6) being populated.
  final String? ipv6Address;

  /// Creates a new [ManagedZoneForwardingConfigTargetNameServer].
  /// [domainName] Fully qualified domain name for the forwarding target.
  /// [forwardingPath] Forwarding path for this TargetNameServer. If unset or `default`
  /// [ipv4Address] IPv4 address of a target name server.
  /// [ipv6Address] IPv6 address of a target name server.
  ManagedZoneForwardingConfigTargetNameServer({
    this.domainName,
    this.forwardingPath,
    this.ipv4Address,
    this.ipv6Address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'forwardingPath': ?forwardingPath,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
    };
  }

  factory ManagedZoneForwardingConfigTargetNameServer.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZoneForwardingConfigTargetNameServer(
      domainName: map['domainName'] == null
          ? null
          : map['domainName'] as String,
      forwardingPath: map['forwardingPath'] == null
          ? null
          : map['forwardingPath'] as String,
      ipv4Address: map['ipv4Address'] == null
          ? null
          : map['ipv4Address'] as String,
      ipv6Address: map['ipv6Address'] == null
          ? null
          : map['ipv6Address'] as String,
    );
  }
}
