// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionTenantDomain {
  /// Set of domains associated with the distribution tenant.
  final pulumi.Input<String> domain;
  /// Current status of the distribution tenant.
  final pulumi.Input<String>? status;

  /// Creates a new [DistributionTenantDomain].
  /// [domain] Set of domains associated with the distribution tenant.
  /// [status] Current status of the distribution tenant.
  DistributionTenantDomain({
    required this.domain,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'status': ?status,
    };
  }

  factory DistributionTenantDomain.fromMap(Map<String, dynamic> map) {
    return DistributionTenantDomain(
      domain: (map['domain'] as String).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

