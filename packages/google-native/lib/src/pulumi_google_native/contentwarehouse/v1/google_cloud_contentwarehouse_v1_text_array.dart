// ignore_for_file: unused_element, unnecessary_cast

/// String/text values.
class GoogleCloudContentwarehouseV1TextArray {
  /// List of text values.
  final List<String>? values;

  GoogleCloudContentwarehouseV1TextArray({
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

  factory GoogleCloudContentwarehouseV1TextArray.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1TextArray(
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
