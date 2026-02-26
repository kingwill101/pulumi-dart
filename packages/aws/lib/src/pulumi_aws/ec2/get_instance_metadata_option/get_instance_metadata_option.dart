// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceMetadataOption {
  /// State of the metadata service: <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span>, <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>.
  final String httpEndpoint;

  /// Whether the IPv6 endpoint for the instance metadata service is <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> or <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>
  final String httpProtocolIpv6;

  /// Desired HTTP PUT response hop limit for instance metadata requests.
  final int httpPutResponseHopLimit;

  /// If session tokens are required: <span pulumi-lang-nodejs="`optional`" pulumi-lang-dotnet="`Optional`" pulumi-lang-go="`optional`" pulumi-lang-python="`optional`" pulumi-lang-yaml="`optional`" pulumi-lang-java="`optional`">`optional`</span>, <span pulumi-lang-nodejs="`required`" pulumi-lang-dotnet="`Required`" pulumi-lang-go="`required`" pulumi-lang-python="`required`" pulumi-lang-yaml="`required`" pulumi-lang-java="`required`">`required`</span>.
  final String httpTokens;

  /// If access to instance tags is allowed from the metadata service: <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span>, <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>.
  final String instanceMetadataTags;

  GetInstanceMetadataOption({
    required this.httpEndpoint,
    required this.httpProtocolIpv6,
    required this.httpPutResponseHopLimit,
    required this.httpTokens,
    required this.instanceMetadataTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpEndpoint'] = httpEndpoint;
    map['httpProtocolIpv6'] = httpProtocolIpv6;
    map['httpPutResponseHopLimit'] = httpPutResponseHopLimit;
    map['httpTokens'] = httpTokens;
    map['instanceMetadataTags'] = instanceMetadataTags;
    return map;
  }

  factory GetInstanceMetadataOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceMetadataOption(
      httpEndpoint: map['httpEndpoint'] as String,
      httpProtocolIpv6: map['httpProtocolIpv6'] as String,
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] as int,
      httpTokens: map['httpTokens'] as String,
      instanceMetadataTags: map['instanceMetadataTags'] as String,
    );
  }
}
