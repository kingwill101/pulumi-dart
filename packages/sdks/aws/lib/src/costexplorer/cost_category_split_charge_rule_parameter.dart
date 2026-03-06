// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CostCategorySplitChargeRuleParameter {
  /// Parameter type.
  final pulumi.Input<String>? type;
  /// Parameter values.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [CostCategorySplitChargeRuleParameter].
  /// [type] Parameter type.
  /// [values] Parameter values.
  const CostCategorySplitChargeRuleParameter({
    this.type,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'values': ?values,
    };
  }

  factory CostCategorySplitChargeRuleParameter.fromMap(Map<String, dynamic> map) {
    return CostCategorySplitChargeRuleParameter(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

