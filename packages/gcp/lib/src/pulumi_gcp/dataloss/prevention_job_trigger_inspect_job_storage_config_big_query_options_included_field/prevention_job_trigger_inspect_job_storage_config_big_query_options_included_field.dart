// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField {
  /// Name describing the field to which scanning is limited.
  final String name;

  PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField(
      name: map['name'] as String,
    );
  }
}
