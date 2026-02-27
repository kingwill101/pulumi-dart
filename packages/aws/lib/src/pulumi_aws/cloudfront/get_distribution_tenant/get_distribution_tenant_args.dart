// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDistributionTenant.
class GetDistributionTenantArgs {
  /// ARN (Amazon Resource Name) for the distribution tenant.
  final Input<String>? arn;

  /// An associated domain of the distribution tenant. Exactly one of `id` or `domain` must be specified.
  final Input<String>? domain;

  /// Identifier for the distribution tenant. For example: `EDFDVBD632BHDS5`. Exactly one of `id` or `domain` must be specified.
  final Input<String>? id;
  final Input<String>? name;

  GetDistributionTenantArgs({
    this.arn,
    this.domain,
    this.id,
    this.name,
  });

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
      arn: Input.asOptionalInput<String>(map['arn']),
      domain: Input.asOptionalInput<String>(map['domain']),
      id: Input.asOptionalInput<String>(map['id']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
