// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionTenantCustomizationCertificate {
  /// ARN (Amazon Resource Name) for the distribution tenant.
  final String arn;

  /// Creates a new [GetDistributionTenantCustomizationCertificate].
  /// [arn] ARN (Amazon Resource Name) for the distribution tenant.
  GetDistributionTenantCustomizationCertificate({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    return map;
  }

  factory GetDistributionTenantCustomizationCertificate.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionTenantCustomizationCertificate(
      arn: map['arn'] as String,
    );
  }
}
