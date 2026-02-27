// ignore_for_file: unused_element, unnecessary_cast

class DistributionTenantCustomizationsWebAcl {
  /// Action to take for the web ACL. Valid values: `allow`, `block`.
  final String? action;

  /// ARN of the distribution tenant.
  final String? arn;

  DistributionTenantCustomizationsWebAcl({
    this.action,
    this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    return map;
  }

  factory DistributionTenantCustomizationsWebAcl.fromMap(
      Map<String, dynamic> map) {
    return DistributionTenantCustomizationsWebAcl(
      action: map['action'] == null ? null : map['action'] as String,
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}
