// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagsSortBy {
  /// Key used to sort the data. AWS requires a key when `sortBy` is specified. Valid values are: `BLENDED_COST`, `UNBLENDED_COST`, `AMORTIZED_COST`, `NET_AMORTIZED_COST`, `NET_UNBLENDED_COST`, `USAGE_QUANTITY`, and `NORMALIZED_USAGE_AMOUNT`.
  final pulumi.Input<String?>? key;
  /// order that's used to sort the data. Valid values are: `ASCENDING`,  `DESCENDING`.
  final pulumi.Input<String?>? sortOrder;

  /// Creates a new [GetTagsSortBy].
  /// [key] Key used to sort the data. AWS requires a key when `sortBy` is specified. Valid values are: `BLENDED_COST`, `UNBLENDED_COST`, `AMORTIZED_COST`, `NET_AMORTIZED_COST`, `NET_UNBLENDED_COST`, `USAGE_QUANTITY`, and `NORMALIZED_USAGE_AMOUNT`.
  /// [sortOrder] order that's used to sort the data. Valid values are: `ASCENDING`,  `DESCENDING`.
  const GetTagsSortBy({
    this.key,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetTagsSortBy.fromMap(Map<String, dynamic> map) {
    return GetTagsSortBy(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
