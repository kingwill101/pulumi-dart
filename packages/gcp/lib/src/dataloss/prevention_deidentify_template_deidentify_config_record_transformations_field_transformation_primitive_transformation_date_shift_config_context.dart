// ignore_for_file: unused_element, unnecessary_cast

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigContext {
  /// Name describing the field.
  final String? name;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigContext].
  /// [name] Name describing the field.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigContext({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigContext.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigContext(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
