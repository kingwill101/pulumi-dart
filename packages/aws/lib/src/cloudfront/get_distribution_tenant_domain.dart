// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionTenantDomain {
  /// An associated domain of the distribution tenant. Exactly one of `id` or `domain` must be specified.
  final String domain;

  /// Current status of the distribution tenant. `Deployed` if the
  /// distribution tenant's information is fully propagated throughout the Amazon
  /// CloudFront system.
  final String status;

  /// Creates a new [GetDistributionTenantDomain].
  /// [domain] An associated domain of the distribution tenant. Exactly one of `id` or `domain` must be specified.
  /// [status] Current status of the distribution tenant. `Deployed` if the
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
