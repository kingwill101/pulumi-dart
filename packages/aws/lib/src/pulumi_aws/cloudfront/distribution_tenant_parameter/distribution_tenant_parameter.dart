// ignore_for_file: unused_element, unnecessary_cast

class DistributionTenantParameter {
  /// Name of the distribution tenant.
  final String name;

  /// Value of the parameter.
  final String value;

  DistributionTenantParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory DistributionTenantParameter.fromMap(Map<String, dynamic> map) {
    return DistributionTenantParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
