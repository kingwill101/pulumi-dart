// ignore_for_file: unused_element, unnecessary_cast

/// Float values.
class GoogleCloudContentwarehouseV1FloatArrayResponse {
  /// List of float values.
  final List<double> values;

  GoogleCloudContentwarehouseV1FloatArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory GoogleCloudContentwarehouseV1FloatArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1FloatArrayResponse(
      values: (map['values'] as List).cast<double>(),
    );
  }
}
