// ignore_for_file: unused_element, unnecessary_cast

class DistributionTenantDomain {
  /// Set of domains associated with the distribution tenant.
  final String domain;

  /// Current status of the distribution tenant.
  final String? status;

  /// Creates a new [DistributionTenantDomain].
  /// [domain] Set of domains associated with the distribution tenant.
  /// [status] Current status of the distribution tenant.
  DistributionTenantDomain({
    required this.domain,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory DistributionTenantDomain.fromMap(Map<String, dynamic> map) {
    return DistributionTenantDomain(
      domain: map['domain'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
