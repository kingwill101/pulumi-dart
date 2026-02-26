// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneForwardingConfigTargetNameServer {
  /// Fully qualified domain name for the forwarding target.
  final String? domainName;

  /// Forwarding path for this TargetNameServer. If unset or <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>
  /// Cloud DNS will make forwarding decision based on address ranges,
  /// i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
  /// to the Internet. When set to <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>, Cloud DNS will always
  /// send queries through VPC for this target.
  /// Possible values are: <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>.
  final String? forwardingPath;

  /// IPv4 address of a target name server.
  /// Does not accept both fields (ipv4 & ipv6) being populated.
  final String? ipv4Address;

  /// IPv6 address of a target name server.
  /// Does not accept both fields (ipv4 & ipv6) being populated.
  final String? ipv6Address;

  ManagedZoneForwardingConfigTargetNameServer({
    this.domainName,
    this.forwardingPath,
    this.ipv4Address,
    this.ipv6Address,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final forwardingPathValue = forwardingPath;
    if (forwardingPathValue != null) {
      map['forwardingPath'] = forwardingPathValue;
    }
    final ipv4AddressValue = ipv4Address;
    if (ipv4AddressValue != null) {
      map['ipv4Address'] = ipv4AddressValue;
    }
    final ipv6AddressValue = ipv6Address;
    if (ipv6AddressValue != null) {
      map['ipv6Address'] = ipv6AddressValue;
    }
    return map;
  }

  factory ManagedZoneForwardingConfigTargetNameServer.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneForwardingConfigTargetNameServer(
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
      forwardingPath: map['forwardingPath'] == null
          ? null
          : map['forwardingPath'] as String,
      ipv4Address:
          map['ipv4Address'] == null ? null : map['ipv4Address'] as String,
      ipv6Address:
          map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
    );
  }
}
