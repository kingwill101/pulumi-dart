// ignore_for_file: unused_element, unnecessary_cast

class DistributionTenantParameter {
  /// Name of the distribution tenant.
  final String name;

  /// Value of the parameter.
  final String value;

  /// Creates a new [DistributionTenantParameter].
  /// [name] Name of the distribution tenant.
  /// [value] Value of the parameter.
  DistributionTenantParameter({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory DistributionTenantParameter.fromMap(Map<String, dynamic> map) {
    return DistributionTenantParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
