// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagsSortBy {
  /// key that's used to sort the data. Valid values are: `BlendedCost`,  `UnblendedCost`, `AmortizedCost`, `NetAmortizedCost`, `NetUnblendedCost`, `UsageQuantity`, `NormalizedUsageAmount`.
  final pulumi.Input<String>? key;
  /// order that's used to sort the data. Valid values are: `ASCENDING`,  `DESCENDING`.
  final pulumi.Input<String>? sortOrder;

  /// Creates a new [GetTagsSortBy].
  /// [key] key that's used to sort the data. Valid values are: `BlendedCost`,  `UnblendedCost`, `AmortizedCost`, `NetAmortizedCost`, `NetUnblendedCost`, `UsageQuantity`, `NormalizedUsageAmount`.
  /// [sortOrder] order that's used to sort the data. Valid values are: `ASCENDING`,  `DESCENDING`.
  GetTagsSortBy({
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
      key: map['key'] == null ? null : (map['key'] as String).input(),
      sortOrder: map['sortOrder'] == null ? null : (map['sortOrder'] as String).input(),
    );
  }
}

