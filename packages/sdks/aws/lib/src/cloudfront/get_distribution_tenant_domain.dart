// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDistributionTenantDomain {
  /// An associated domain of the distribution tenant. Exactly one of `id` or `domain` must be specified.
  final pulumi.Input<String> domain;
  /// Current status of the distribution tenant. `Deployed` if the
  /// distribution tenant's information is fully propagated throughout the Amazon
  /// CloudFront system.
  final pulumi.Input<String> status;

  /// Creates a new [GetDistributionTenantDomain].
  /// [domain] An associated domain of the distribution tenant. Exactly one of `id` or `domain` must be specified.
  /// [status] Current status of the distribution tenant. `Deployed` if the
  GetDistributionTenantDomain({
    required this.domain,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'status': status,
    };
  }

  factory GetDistributionTenantDomain.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantDomain(
      domain: (map['domain'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

