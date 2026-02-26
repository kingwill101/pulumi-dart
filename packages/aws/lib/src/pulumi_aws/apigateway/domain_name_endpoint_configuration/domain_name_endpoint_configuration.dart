// ignore_for_file: unused_element, unnecessary_cast

class DomainNameEndpointConfiguration {
  /// The IP address types that can invoke a DomainName. Valid values: <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>. Use <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span> to allow only IPv4 addresses to invoke a DomainName, or use <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span> to allow both IPv4 and IPv6 addresses to invoke a DomainName. For the `PRIVATE` endpoint type, only <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span> is supported. Terraform performs drift detection for this argument only when the value is provided.
  final String? ipAddressType;

  /// A list of endpoint types of an API or its custom domain name. For an edge-optimized API and its custom domain name, the endpoint type is `EDGE`. For a regional API and its custom domain name, the endpoint type is `REGIONAL`. For a private API, the endpoint type is `PRIVATE`.
  final String types;

  DomainNameEndpointConfiguration({
    this.ipAddressType,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    map['types'] = types;
    return map;
  }

  factory DomainNameEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return DomainNameEndpointConfiguration(
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      types: map['types'] as String,
    );
  }
}
