// ignore_for_file: unused_element, unnecessary_cast

/// Float values.
class GoogleCloudContentwarehouseV1FloatArray {
  /// List of float values.
  final List<double>? values;

  /// Creates a new [GoogleCloudContentwarehouseV1FloatArray].
  /// [values] List of float values.
  GoogleCloudContentwarehouseV1FloatArray({
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

  factory GoogleCloudContentwarehouseV1FloatArray.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1FloatArray(
      values:
          map['values'] == null ? null : (map['values'] as List).cast<double>(),
    );
  }
}
