// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionTenantDomain {
  /// An associated domain of the distribution tenant. Exactly one of <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> or <span pulumi-lang-nodejs="`domain`" pulumi-lang-dotnet="`Domain`" pulumi-lang-go="`domain`" pulumi-lang-python="`domain`" pulumi-lang-yaml="`domain`" pulumi-lang-java="`domain`">`domain`</span> must be specified.
  final String domain;

  /// Current status of the distribution tenant. `Deployed` if the
  /// distribution tenant's information is fully propagated throughout the Amazon
  /// CloudFront system.
  final String status;

  GetDistributionTenantDomain({
    required this.domain,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    map['status'] = status;
    return map;
  }

  factory GetDistributionTenantDomain.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantDomain(
      domain: map['domain'] as String,
      status: map['status'] as String,
    );
  }
}
