// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField {
  /// Name describing the field excluded from scanning.
  final String name;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField].
  /// [name] Name describing the field excluded from scanning.
  PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField(
      name: map['name'] as String,
    );
  }
}
