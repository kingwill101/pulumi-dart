// ignore_for_file: unused_element, unnecessary_cast

/// Integer values.
class GoogleCloudContentwarehouseV1IntegerArrayResponse {
  /// List of integer values.
  final List<int> values;

  /// Creates a new [GoogleCloudContentwarehouseV1IntegerArrayResponse].
  /// [values] List of integer values.
  GoogleCloudContentwarehouseV1IntegerArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory GoogleCloudContentwarehouseV1IntegerArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1IntegerArrayResponse(
      values: (map['values'] as List).cast<int>(),
    );
  }
}
