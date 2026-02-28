// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionTenantCustomizationWebAcl {
  final String action;

  /// ARN (Amazon Resource Name) for the distribution tenant.
  final String arn;

  /// Creates a new [GetDistributionTenantCustomizationWebAcl].
  /// [action] Required.
  /// [arn] ARN (Amazon Resource Name) for the distribution tenant.
  GetDistributionTenantCustomizationWebAcl({
    required this.action,
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['arn'] = arn;
    return map;
  }

  factory GetDistributionTenantCustomizationWebAcl.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionTenantCustomizationWebAcl(
      action: map['action'] as String,
      arn: map['arn'] as String,
    );
  }
}
