// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionTenantCustomizationsWebAcl {
  /// Action to take for the web ACL. Valid values: `allow`, `block`.
  final pulumi.Input<String>? action;
  /// ARN of the distribution tenant.
  final pulumi.Input<String>? arn;

  /// Creates a new [DistributionTenantCustomizationsWebAcl].
  /// [action] Action to take for the web ACL. Valid values: `allow`, `block`.
  /// [arn] ARN of the distribution tenant.
  DistributionTenantCustomizationsWebAcl({
    this.action,
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'arn': ?arn,
    };
  }

  factory DistributionTenantCustomizationsWebAcl.fromMap(Map<String, dynamic> map) {
    return DistributionTenantCustomizationsWebAcl(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

