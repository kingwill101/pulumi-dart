// ignore_for_file: unused_element, unnecessary_cast


class LifecyclePolicyPolicyDetailFilter {
  /// For age-based filters, this is the number of resources to keep on hand after the lifecycle DELETE action is applied. Impacted resources are only deleted if you have more than this number of resources. If you have fewer resources than this number, the impacted resource is not deleted.
  final int? retainAtLeast;
  /// Filter resources based on either age or count. Valid values: `AGE` or `COUNT`.
  final String type;
  /// Defines the unit of time that the lifecycle policy uses to determine impacted resources. This is required for age-based rules. Valid values: `DAYS`, `WEEKS`, `MONTHS` or `YEARS`.
  final String? unit;
  /// The number of units for the time period or for the count. For example, a value of 6 might refer to six months or six AMIs.
  ///
  /// The following arguments are optional:
  final int value;

  /// Creates a new [LifecyclePolicyPolicyDetailFilter].
  /// [retainAtLeast] For age-based filters, this is the number of resources to keep on hand after the lifecycle DELETE action is applied. Impacted resources are only deleted if you have more than this number of resources. If you have fewer resources than this number, the impacted resource is not deleted.
  /// [type] Filter resources based on either age or count. Valid values: `AGE` or `COUNT`.
  /// [unit] Defines the unit of time that the lifecycle policy uses to determine impacted resources. This is required for age-based rules. Valid values: `DAYS`, `WEEKS`, `MONTHS` or `YEARS`.
  /// [value] The number of units for the time period or for the count. For example, a value of 6 might refer to six months or six AMIs.
  LifecyclePolicyPolicyDetailFilter({
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
      retainAtLeast: map['retainAtLeast'] == null ? null : map['retainAtLeast'] as int,
      type: map['type'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

