// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField {
  /// Name describing the field.
  final String name;

  PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField(
      name: map['name'] as String,
    );
  }
}
