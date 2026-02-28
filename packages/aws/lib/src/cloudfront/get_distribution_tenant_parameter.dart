// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionTenantParameter {
  final String name;
  final String value;

  /// Creates a new [GetDistributionTenantParameter].
  /// [name] Required.
  /// [value] Required.
  GetDistributionTenantParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetDistributionTenantParameter.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
