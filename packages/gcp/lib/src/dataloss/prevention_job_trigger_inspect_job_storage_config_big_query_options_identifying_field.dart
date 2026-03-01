// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField {
  /// Name describing the field.
  final String name;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField].
  /// [name] Name describing the field.
  PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField(
      name: map['name'] as String,
    );
  }
}
