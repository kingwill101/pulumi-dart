// ignore_for_file: unused_element, unnecessary_cast

class DistributionTenantCustomizationsWebAcl {
  /// Action to take for the web ACL. Valid values: `allow`, `block`.
  final String? action;

  /// ARN of the distribution tenant.
  final String? arn;

  /// Creates a new [DistributionTenantCustomizationsWebAcl].
  /// [action] Action to take for the web ACL. Valid values: `allow`, `block`.
  /// [arn] ARN of the distribution tenant.
  DistributionTenantCustomizationsWebAcl({this.action, this.arn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'action': ?action, 'arn': ?arn};
  }

  factory DistributionTenantCustomizationsWebAcl.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionTenantCustomizationsWebAcl(
      action: map['action'] == null ? null : map['action'] as String,
      arn: map['arn'] == null ? null : map['arn'] as String,
    );
  }
}
