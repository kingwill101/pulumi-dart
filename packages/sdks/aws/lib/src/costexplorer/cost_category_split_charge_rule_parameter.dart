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
  CostCategorySplitChargeRuleParameter({
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
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      values: map['values'] == null ? null : (((map['values'] as List).cast<String>()).input()).input(),
    );
  }
}

