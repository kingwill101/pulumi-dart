// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionTenantCustomizationsCertificate {
  /// ARN of the distribution tenant.
  final pulumi.Input<String>? arn;

  /// Creates a new [DistributionTenantCustomizationsCertificate].
  /// [arn] ARN of the distribution tenant.
  const DistributionTenantCustomizationsCertificate({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
    };
  }

  factory DistributionTenantCustomizationsCertificate.fromMap(Map<String, dynamic> map) {
    return DistributionTenantCustomizationsCertificate(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
