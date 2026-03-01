// ignore_for_file: unused_element, unnecessary_cast


class DistributionTenantCustomizationsCertificate {
  /// ARN of the distribution tenant.
  final String? arn;

  /// Creates a new [DistributionTenantCustomizationsCertificate].
  /// [arn] ARN of the distribution tenant.
  DistributionTenantCustomizationsCertificate({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
    };
  }

  factory DistributionTenantCustomizationsCertificate.fromMap(Map<String, dynamic> map) {
    return DistributionTenantCustomizationsCertificate(
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}

