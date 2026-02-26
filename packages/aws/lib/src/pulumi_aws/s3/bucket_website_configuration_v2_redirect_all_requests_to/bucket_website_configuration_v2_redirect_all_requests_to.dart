// ignore_for_file: unused_element, unnecessary_cast

class BucketWebsiteConfigurationV2RedirectAllRequestsTo {
  /// Name of the host where requests are redirected.
  final String hostName;

  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: <span pulumi-lang-nodejs="`http`" pulumi-lang-dotnet="`Http`" pulumi-lang-go="`http`" pulumi-lang-python="`http`" pulumi-lang-yaml="`http`" pulumi-lang-java="`http`">`http`</span>, <span pulumi-lang-nodejs="`https`" pulumi-lang-dotnet="`Https`" pulumi-lang-go="`https`" pulumi-lang-python="`https`" pulumi-lang-yaml="`https`" pulumi-lang-java="`https`">`https`</span>.
  final String? protocol;

  BucketWebsiteConfigurationV2RedirectAllRequestsTo({
    required this.hostName,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostName'] = hostName;
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    return map;
  }

  factory BucketWebsiteConfigurationV2RedirectAllRequestsTo.fromMap(
      Map<String, dynamic> map) {
    return BucketWebsiteConfigurationV2RedirectAllRequestsTo(
      hostName: map['hostName'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}
