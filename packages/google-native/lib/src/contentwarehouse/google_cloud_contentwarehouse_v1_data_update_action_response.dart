// ignore_for_file: unused_element, unnecessary_cast

/// Represents the action responsible for properties update operations.
class GoogleCloudContentwarehouseV1DataUpdateActionResponse {
  /// Map of (K, V) -> (valid name of the field, new value of the field) E.g., ("age", "60") entry triggers update of field age with a value of 60. If the field is not present then new entry is added. During update action execution, value strings will be casted to appropriate types.
  final Map<String, String> entries;

  /// Creates a new [GoogleCloudContentwarehouseV1DataUpdateActionResponse].
  /// [entries] Map of (K, V) -> (valid name of the field, new value of the field) E.g., ("age", "60") entry triggers update of field age with a value of 60. If the field is not present then new entry is added. During update action execution, value strings will be casted to appropriate types.
  GoogleCloudContentwarehouseV1DataUpdateActionResponse({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entries'] = entries;
    return map;
  }

  factory GoogleCloudContentwarehouseV1DataUpdateActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1DataUpdateActionResponse(
      entries: (map['entries'] as Map).cast<String, String>(),
    );
  }
}
