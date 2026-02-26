// ignore_for_file: unused_element, unnecessary_cast

/// Integer values.
class GoogleCloudContentwarehouseV1IntegerArray {
  /// List of integer values.
  final List<int>? values;

  GoogleCloudContentwarehouseV1IntegerArray({
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1IntegerArray.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1IntegerArray(
      values:
          map['values'] == null ? null : (map['values'] as List).cast<int>(),
    );
  }
}
