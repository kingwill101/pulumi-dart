// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOpenApiPricingModulesModuleValue {
  /// The module Code corresponds to the attribute value.
  final pulumi.Input<String> name;
  /// Module value description information.
  final pulumi.Input<String> remark;
  /// The attribute value type corresponding to the module Code. Value:
  /// * single_float: single value type.
  /// * range_float: range value type.
  final pulumi.Input<String> type;
  /// The module Code corresponds to the attribute value.
  /// &gt; format 1024-1024000 when Type = range_float: 1024 means from 1024 to 1024000, step size 1024.
  final pulumi.Input<String> value;

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
      name: pulumi.Input.fromValue(map['name'] as String),
      remark: pulumi.Input.fromValue(map['remark'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

