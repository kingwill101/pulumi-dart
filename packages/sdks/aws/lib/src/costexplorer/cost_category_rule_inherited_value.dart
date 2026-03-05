// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CostCategoryRuleInheritedValue {
  /// Key to extract cost category values.
  final pulumi.Input<String>? dimensionKey;
  /// Name of the dimension that's used to group costs. If you specify `LINKED_ACCOUNT_NAME`, the cost category value is based on account name. If you specify `TAG`, the cost category value will be based on the value of the specified tag key. Valid values are `LINKED_ACCOUNT_NAME`, `TAG`
  final pulumi.Input<String>? dimensionName;

  /// Creates a new [CostCategoryRuleInheritedValue].
  /// [dimensionKey] Key to extract cost category values.
  /// [dimensionName] Name of the dimension that's used to group costs. If you specify `LINKED_ACCOUNT_NAME`, the cost category value is based on account name. If you specify `TAG`, the cost category value will be based on the value of the specified tag key. Valid values are `LINKED_ACCOUNT_NAME`, `TAG`
  CostCategoryRuleInheritedValue({
    this.dimensionKey,
    this.dimensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensionKey': ?dimensionKey,
      'dimensionName': ?dimensionName,
    };
  }

  factory CostCategoryRuleInheritedValue.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleInheritedValue(
      dimensionKey: (() { final guardedValue = map['dimensionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensionName: (() { final guardedValue = map['dimensionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

