// ignore_for_file: unused_element, unnecessary_cast

class GetCostCategoryRuleInheritedValue {
  /// Key to extract cost category values.
  final String dimensionKey;

  /// Name of the dimension that's used to group costs. If you specify `LINKED_ACCOUNT_NAME`, the cost category value is based on account name. If you specify `TAG`, the cost category value will be based on the value of the specified tag key. Valid values are `LINKED_ACCOUNT_NAME`, `TAG`
  final String dimensionName;

  GetCostCategoryRuleInheritedValue({
    required this.dimensionKey,
    required this.dimensionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimensionKey'] = dimensionKey;
    map['dimensionName'] = dimensionName;
    return map;
  }

  factory GetCostCategoryRuleInheritedValue.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleInheritedValue(
      dimensionKey: map['dimensionKey'] as String,
      dimensionName: map['dimensionName'] as String,
    );
  }
}
