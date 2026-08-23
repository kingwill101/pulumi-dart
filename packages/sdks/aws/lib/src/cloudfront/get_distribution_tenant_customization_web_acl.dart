// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDistributionTenantCustomizationWebAcl {
  final pulumi.Input<String> action;
  /// ARN (Amazon Resource Name) for the distribution tenant.
  final pulumi.Input<String> arn;

  /// Creates a new [GetDistributionTenantCustomizationWebAcl].
  /// [action] Required.
  /// [arn] ARN (Amazon Resource Name) for the distribution tenant.
  const GetDistributionTenantCustomizationWebAcl({
    required this.action,
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'arn': arn,
    };
  }

  factory GetDistributionTenantCustomizationWebAcl.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantCustomizationWebAcl(
      action: pulumi.Input.fromValue(map['action'] as String),
      arn: pulumi.Input.fromValue(map['arn'] as String),
    );
  }
}
