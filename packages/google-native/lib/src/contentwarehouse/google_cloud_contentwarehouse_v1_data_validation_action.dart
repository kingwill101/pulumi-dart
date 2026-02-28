// ignore_for_file: unused_element, unnecessary_cast

/// Represents the action responsible for data validation operations.
class GoogleCloudContentwarehouseV1DataValidationAction {
  /// Map of (K, V) -> (field, string condition to be evaluated on the field) E.g., ("age", "age > 18 && age < 60") entry triggers validation of field age with the given condition. Map entries will be ANDed during validation.
  final Map<String, String>? conditions;

  /// Creates a new [GoogleCloudContentwarehouseV1DataValidationAction].
  /// [conditions] Map of (K, V) -> (field, string condition to be evaluated on the field) E.g., ("age", "age > 18 && age < 60") entry triggers validation of field age with the given condition. Map entries will be ANDed during validation.
  GoogleCloudContentwarehouseV1DataValidationAction({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = conditionsValue;
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1DataValidationAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1DataValidationAction(
      conditions: map['conditions'] == null
          ? null
          : (map['conditions'] as Map).cast<String, String>(),
    );
  }
}
