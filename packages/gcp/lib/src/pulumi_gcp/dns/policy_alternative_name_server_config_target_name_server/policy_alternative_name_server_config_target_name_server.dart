// ignore_for_file: unused_element, unnecessary_cast

class PolicyAlternativeNameServerConfigTargetNameServer {
  /// Forwarding path for this TargetNameServer. If unset or <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> Cloud DNS will make forwarding
  /// decision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
  /// to the Internet. When set to <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>, Cloud DNS will always send queries through VPC for this target
  /// Possible values are: <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedDns64Config"" pulumi-lang-dotnet=""NestedDns64Config"" pulumi-lang-go=""nestedDns64Config"" pulumi-lang-python=""nested_dns64_config"" pulumi-lang-yaml=""nestedDns64Config"" pulumi-lang-java=""nestedDns64Config"">"nested_dns64_config"</span>></a>The <span pulumi-lang-nodejs="`dns64Config`" pulumi-lang-dotnet="`Dns64Config`" pulumi-lang-go="`dns64Config`" pulumi-lang-python="`dns64_config`" pulumi-lang-yaml="`dns64Config`" pulumi-lang-java="`dns64Config`">`dns64_config`</span> block supports:
  final String? forwardingPath;

  /// IPv4 address to forward to.
  final String ipv4Address;

  PolicyAlternativeNameServerConfigTargetNameServer({
    this.forwardingPath,
    required this.ipv4Address,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forwardingPathValue = forwardingPath;
    if (forwardingPathValue != null) {
      map['forwardingPath'] = forwardingPathValue;
    }
    map['ipv4Address'] = ipv4Address;
    return map;
  }

  factory PolicyAlternativeNameServerConfigTargetNameServer.fromMap(
      Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfigTargetNameServer(
      forwardingPath: map['forwardingPath'] == null
          ? null
          : map['forwardingPath'] as String,
      ipv4Address: map['ipv4Address'] as String,
    );
  }
}
