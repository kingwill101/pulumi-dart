// ignore_for_file: unused_element, unnecessary_cast

class ServiceNetworkVpcAssociationDnsOptions {
  /// Preference for which private domains have a private hosted zone created for and associated with the specified VPC. Only supported when <span pulumi-lang-nodejs="`privateDnsEnabled`" pulumi-lang-dotnet="`PrivateDnsEnabled`" pulumi-lang-go="`privateDnsEnabled`" pulumi-lang-python="`private_dns_enabled`" pulumi-lang-yaml="`privateDnsEnabled`" pulumi-lang-java="`privateDnsEnabled`">`private_dns_enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Valid Values are `VERIFIED_DOMAINS_ONLY`, `ALL_DOMAINS`, `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS` and `SPECIFIED_DOMAINS_ONLY`.
  final String? privateDnsPreference;

  /// Private domains to create private hosted zones for and associate with the specified VPC. Only supported when <span pulumi-lang-nodejs="`privateDnsEnabled`" pulumi-lang-dotnet="`PrivateDnsEnabled`" pulumi-lang-go="`privateDnsEnabled`" pulumi-lang-python="`private_dns_enabled`" pulumi-lang-yaml="`privateDnsEnabled`" pulumi-lang-java="`privateDnsEnabled`">`private_dns_enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> and <span pulumi-lang-nodejs="`privateDnsPreference`" pulumi-lang-dotnet="`PrivateDnsPreference`" pulumi-lang-go="`privateDnsPreference`" pulumi-lang-python="`private_dns_preference`" pulumi-lang-yaml="`privateDnsPreference`" pulumi-lang-java="`privateDnsPreference`">`private_dns_preference`</span> is `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS` or `SPECIFIED_DOMAINS_ONLY`.
  final List<String>? privateDnsSpecifiedDomains;

  ServiceNetworkVpcAssociationDnsOptions({
    this.privateDnsPreference,
    this.privateDnsSpecifiedDomains,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final privateDnsPreferenceValue = privateDnsPreference;
    if (privateDnsPreferenceValue != null) {
      map['privateDnsPreference'] = privateDnsPreferenceValue;
    }
    final privateDnsSpecifiedDomainsValue = privateDnsSpecifiedDomains;
    if (privateDnsSpecifiedDomainsValue != null) {
      map['privateDnsSpecifiedDomains'] = privateDnsSpecifiedDomainsValue;
    }
    return map;
  }

  factory ServiceNetworkVpcAssociationDnsOptions.fromMap(
      Map<String, dynamic> map) {
    return ServiceNetworkVpcAssociationDnsOptions(
      privateDnsPreference: map['privateDnsPreference'] == null
          ? null
          : map['privateDnsPreference'] as String,
      privateDnsSpecifiedDomains: map['privateDnsSpecifiedDomains'] == null
          ? null
          : (map['privateDnsSpecifiedDomains'] as List).cast<String>(),
    );
  }
}
