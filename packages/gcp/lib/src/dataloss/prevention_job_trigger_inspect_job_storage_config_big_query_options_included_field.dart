// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField {
  /// Name describing the field to which scanning is limited.
  final String name;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField].
  /// [name] Name describing the field to which scanning is limited.
  PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField(
      name: map['name'] as String,
    );
  }
}
