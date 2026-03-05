// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCostCategoryRuleInheritedValue {
  /// Key to extract cost category values.
  final pulumi.Input<String> dimensionKey;
  /// Name of the dimension that's used to group costs. If you specify `LINKED_ACCOUNT_NAME`, the cost category value is based on account name. If you specify `TAG`, the cost category value will be based on the value of the specified tag key. Valid values are `LINKED_ACCOUNT_NAME`, `TAG`
  final pulumi.Input<String> dimensionName;

  /// Creates a new [GetCostCategoryRuleInheritedValue].
  /// [dimensionKey] Key to extract cost category values.
  /// [dimensionName] Name of the dimension that's used to group costs. If you specify `LINKED_ACCOUNT_NAME`, the cost category value is based on account name. If you specify `TAG`, the cost category value will be based on the value of the specified tag key. Valid values are `LINKED_ACCOUNT_NAME`, `TAG`
  GetCostCategoryRuleInheritedValue({
    required this.dimensionKey,
    required this.dimensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensionKey': dimensionKey,
      'dimensionName': dimensionName,
    };
  }

  factory GetCostCategoryRuleInheritedValue.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleInheritedValue(
      dimensionKey: pulumi.Input.fromValue(map['dimensionKey'] as String),
      dimensionName: pulumi.Input.fromValue(map['dimensionName'] as String),
    );
  }
}

