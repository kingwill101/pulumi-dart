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
    String? arn,
    String? domain,
    String? id,
    String? name,
  })  : arn = pulumi.Input.asOptionalInput<String>(arn),
        domain = pulumi.Input.asOptionalInput<String>(domain),
        id = pulumi.Input.asOptionalInput<String>(id),
        name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory GetDistributionTenantArgs.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantArgs(
      arn: map['arn'] == null ? null : map['arn'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
