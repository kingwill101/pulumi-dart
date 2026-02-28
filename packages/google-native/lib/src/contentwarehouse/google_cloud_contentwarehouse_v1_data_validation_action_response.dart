// ignore_for_file: unused_element, unnecessary_cast

/// Represents the action responsible for data validation operations.
class GoogleCloudContentwarehouseV1DataValidationActionResponse {
  /// Map of (K, V) -> (field, string condition to be evaluated on the field) E.g., ("age", "age > 18 && age < 60") entry triggers validation of field age with the given condition. Map entries will be ANDed during validation.
  final Map<String, String> conditions;

  /// Creates a new [GoogleCloudContentwarehouseV1DataValidationActionResponse].
  /// [conditions] Map of (K, V) -> (field, string condition to be evaluated on the field) E.g., ("age", "age > 18 && age < 60") entry triggers validation of field age with the given condition. Map entries will be ANDed during validation.
  GoogleCloudContentwarehouseV1DataValidationActionResponse({
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = conditions;
    return map;
  }

  factory GoogleCloudContentwarehouseV1DataValidationActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1DataValidationActionResponse(
      conditions: (map['conditions'] as Map).cast<String, String>(),
    );
  }
}
