// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList {
  /// Default value to use when a user doesn't provide a value for a slot.
  final String defaultValue;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList].
  /// [defaultValue] Default value to use when a user doesn't provide a value for a slot.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList({
    required this.defaultValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultValue'] = defaultValue;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList(
      defaultValue: map['defaultValue'] as String,
    );
  }
}
