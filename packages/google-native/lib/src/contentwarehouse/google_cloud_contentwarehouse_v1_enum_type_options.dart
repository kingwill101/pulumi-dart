// ignore_for_file: unused_element, unnecessary_cast

/// Configurations for an enum/categorical property.
class GoogleCloudContentwarehouseV1EnumTypeOptions {
  /// List of possible enum values.
  final List<String> possibleValues;

  /// Make sure the Enum property value provided in the document is in the possile value list during document creation. The validation check runs by default.
  final bool? validationCheckDisabled;

  /// Creates a new [GoogleCloudContentwarehouseV1EnumTypeOptions].
  /// [possibleValues] List of possible enum values.
  /// [validationCheckDisabled] Make sure the Enum property value provided in the document is in the possile value list during document creation. The validation check runs by default.
  GoogleCloudContentwarehouseV1EnumTypeOptions({
    required this.possibleValues,
    this.validationCheckDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'possibleValues': possibleValues,
      'validationCheckDisabled': ?validationCheckDisabled,
    };
  }

  factory GoogleCloudContentwarehouseV1EnumTypeOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1EnumTypeOptions(
      possibleValues: (map['possibleValues'] as List).cast<String>(),
      validationCheckDisabled: map['validationCheckDisabled'] == null
          ? null
          : map['validationCheckDisabled'] as bool,
    );
  }
}
