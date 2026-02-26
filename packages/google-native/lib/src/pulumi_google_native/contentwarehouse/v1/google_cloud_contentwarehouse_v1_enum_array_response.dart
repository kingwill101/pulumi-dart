// ignore_for_file: unused_element, unnecessary_cast

/// Enum values.
class GoogleCloudContentwarehouseV1EnumArrayResponse {
  /// List of enum values.
  final List<String> values;

  GoogleCloudContentwarehouseV1EnumArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory GoogleCloudContentwarehouseV1EnumArrayResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1EnumArrayResponse(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
