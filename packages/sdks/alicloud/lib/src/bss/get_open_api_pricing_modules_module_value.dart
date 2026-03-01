// ignore_for_file: unused_element, unnecessary_cast


class GetOpenApiPricingModulesModuleValue {
  /// The module Code corresponds to the attribute value.
  final String name;
  /// Module value description information.
  final String remark;
  /// The attribute value type corresponding to the module Code. Value:
  /// * single_float: single value type.
  /// * range_float: range value type.
  final String type;
  /// The module Code corresponds to the attribute value.
  /// > format 1024-1024000 when Type = range_float: 1024 means from 1024 to 1024000, step size 1024.
  final String value;

  /// Creates a new [GetOpenApiPricingModulesModuleValue].
  /// [name] The module Code corresponds to the attribute value.
  /// [remark] Module value description information.
  /// [type] The attribute value type corresponding to the module Code. Value:
  /// [value] The module Code corresponds to the attribute value.
  GetOpenApiPricingModulesModuleValue({
    required this.name,
    required this.remark,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'remark': remark,
      'type': type,
      'value': value,
    };
  }

  factory GetOpenApiPricingModulesModuleValue.fromMap(Map<String, dynamic> map) {
    return GetOpenApiPricingModulesModuleValue(
      name: map['name'] as String,
      remark: map['remark'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

