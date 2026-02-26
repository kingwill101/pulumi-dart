// ignore_for_file: unused_element, unnecessary_cast

/// Represents the action responsible for properties update operations.
class GoogleCloudContentwarehouseV1DataUpdateAction {
  /// Map of (K, V) -> (valid name of the field, new value of the field) E.g., ("age", "60") entry triggers update of field age with a value of 60. If the field is not present then new entry is added. During update action execution, value strings will be casted to appropriate types.
  final Map<String, String>? entries;

  GoogleCloudContentwarehouseV1DataUpdateAction({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entriesValue = entries;
    if (entriesValue != null) {
      map['entries'] = entriesValue;
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1DataUpdateAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1DataUpdateAction(
      entries: map['entries'] == null
          ? null
          : (map['entries'] as Map).cast<String, String>(),
    );
  }
}
