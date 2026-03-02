// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_distribution_tenant_get_distribution_tenant_args_doc}
/// Arguments for getDistributionTenant.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_distribution_tenant_get_distribution_tenant_args_doc}
class GetDistributionTenantArgs {
  /// ARN (Amazon Resource Name) for the distribution tenant.
  final pulumi.Input<String>? arn;
  /// An associated domain of the distribution tenant. Exactly one of `id` or `domain` must be specified.
  final pulumi.Input<String>? domain;
  /// Identifier for the distribution tenant. For example: `EDFDVBD632BHDS5`. Exactly one of `id` or `domain` must be specified.
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? name;

  /// Creates a new [GetDistributionTenantArgs].
  /// [arn] ARN (Amazon Resource Name) for the distribution tenant.
  /// [domain] An associated domain of the distribution tenant. Exactly one of `id` or `domain` must be specified.
  /// [id] Identifier for the distribution tenant. For example: `EDFDVBD632BHDS5`. Exactly one of `id` or `domain` must be specified.
  /// [name] Optional.
  GetDistributionTenantArgs({
    this.arn,
    this.domain,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domain': ?domain,
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetDistributionTenantArgs.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantArgs(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

