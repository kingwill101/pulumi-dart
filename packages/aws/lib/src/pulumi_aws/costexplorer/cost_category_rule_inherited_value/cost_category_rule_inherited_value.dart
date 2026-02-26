// ignore_for_file: unused_element, unnecessary_cast

class CostCategoryRuleInheritedValue {
  /// Key to extract cost category values.
  final String? dimensionKey;

  /// Name of the dimension that's used to group costs. If you specify `LINKED_ACCOUNT_NAME`, the cost category value is based on account name. If you specify `TAG`, the cost category value will be based on the value of the specified tag key. Valid values are `LINKED_ACCOUNT_NAME`, `TAG`
  final String? dimensionName;

  CostCategoryRuleInheritedValue({
    this.dimensionKey,
    this.dimensionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionKeyValue = dimensionKey;
    if (dimensionKeyValue != null) {
      map['dimensionKey'] = dimensionKeyValue;
    }
    final dimensionNameValue = dimensionName;
    if (dimensionNameValue != null) {
      map['dimensionName'] = dimensionNameValue;
    }
    return map;
  }

  factory CostCategoryRuleInheritedValue.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleInheritedValue(
      dimensionKey:
          map['dimensionKey'] == null ? null : map['dimensionKey'] as String,
      dimensionName:
          map['dimensionName'] == null ? null : map['dimensionName'] as String,
    );
  }
}
