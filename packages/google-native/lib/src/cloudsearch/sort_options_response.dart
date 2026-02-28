// ignore_for_file: unused_element, unnecessary_cast

class SortOptionsResponse {
  /// The name of the operator corresponding to the field to sort on. The corresponding property must be marked as sortable.
  final String operatorName;

  /// Ascending is the default sort order
  final String sortOrder;

  /// Creates a new [SortOptionsResponse].
  /// [operatorName] The name of the operator corresponding to the field to sort on. The corresponding property must be marked as sortable.
  /// [sortOrder] Ascending is the default sort order
  SortOptionsResponse({
    required this.operatorName,
    required this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['operatorName'] = operatorName;
    map['sortOrder'] = sortOrder;
    return map;
  }

  factory SortOptionsResponse.fromMap(Map<String, dynamic> map) {
    return SortOptionsResponse(
      operatorName: map['operatorName'] as String,
      sortOrder: map['sortOrder'] as String,
    );
  }
}
