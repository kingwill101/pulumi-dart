// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField {
  /// Name describing the field.
  final String name;

  PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField(
      name: map['name'] as String,
    );
  }
}
