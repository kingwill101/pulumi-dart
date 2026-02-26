// ignore_for_file: unused_element, unnecessary_cast

class GetTagsSortBy {
  /// key that's used to sort the data. Valid values are: `BlendedCost`,  `UnblendedCost`, `AmortizedCost`, `NetAmortizedCost`, `NetUnblendedCost`, `UsageQuantity`, `NormalizedUsageAmount`.
  final String? key;

  /// order that's used to sort the data. Valid values are: `ASCENDING`,  `DESCENDING`.
  final String? sortOrder;

  GetTagsSortBy({
    this.key,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final sortOrderValue = sortOrder;
    if (sortOrderValue != null) {
      map['sortOrder'] = sortOrderValue;
    }
    return map;
  }

  factory GetTagsSortBy.fromMap(Map<String, dynamic> map) {
    return GetTagsSortBy(
      key: map['key'] == null ? null : map['key'] as String,
      sortOrder: map['sortOrder'] == null ? null : map['sortOrder'] as String,
    );
  }
}
