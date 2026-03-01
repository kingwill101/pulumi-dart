// ignore_for_file: unused_element, unnecessary_cast

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField {
  /// Name describing the field.
  final String? name;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField].
  /// [name] Name describing the field.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
