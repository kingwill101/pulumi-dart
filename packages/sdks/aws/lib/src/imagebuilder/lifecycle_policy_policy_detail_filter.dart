// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailFilter {
  /// For age-based filters, this is the number of resources to keep on hand after the lifecycle DELETE action is applied. Impacted resources are only deleted if you have more than this number of resources. If you have fewer resources than this number, the impacted resource is not deleted.
  final pulumi.Input<int>? retainAtLeast;
  /// Filter resources based on either age or count. Valid values: `AGE` or `COUNT`.
  final pulumi.Input<String> type;
  /// Defines the unit of time that the lifecycle policy uses to determine impacted resources. This is required for age-based rules. Valid values: `DAYS`, `WEEKS`, `MONTHS` or `YEARS`.
  final pulumi.Input<String>? unit;
  /// The number of units for the time period or for the count. For example, a value of 6 might refer to six months or six AMIs.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> value;

  /// Creates a new [LifecyclePolicyPolicyDetailFilter].
  /// [retainAtLeast] For age-based filters, this is the number of resources to keep on hand after the lifecycle DELETE action is applied. Impacted resources are only deleted if you have more than this number of resources. If you have fewer resources than this number, the impacted resource is not deleted.
  /// [type] Filter resources based on either age or count. Valid values: `AGE` or `COUNT`.
  /// [unit] Defines the unit of time that the lifecycle policy uses to determine impacted resources. This is required for age-based rules. Valid values: `DAYS`, `WEEKS`, `MONTHS` or `YEARS`.
  /// [value] The number of units for the time period or for the count. For example, a value of 6 might refer to six months or six AMIs.
  const LifecyclePolicyPolicyDetailFilter({
    this.retainAtLeast,
    required this.type,
    this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retainAtLeast': ?retainAtLeast,
      'type': type,
      'unit': ?unit,
      'value': value,
    };
  }

  factory LifecyclePolicyPolicyDetailFilter.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailFilter(
      retainAtLeast: (() { final guardedValue = map['retainAtLeast']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
