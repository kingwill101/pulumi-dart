// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_replace_config_new_value/prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_replace_config_new_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfig {
  /// Replace each input value with a given value.
  /// The <span pulumi-lang-nodejs="`newValue`" pulumi-lang-dotnet="`NewValue`" pulumi-lang-go="`newValue`" pulumi-lang-python="`new_value`" pulumi-lang-yaml="`newValue`" pulumi-lang-java="`newValue`">`new_value`</span> block must only contain one argument. For example when replacing the contents of a string-type field, only <span pulumi-lang-nodejs="`stringValue`" pulumi-lang-dotnet="`StringValue`" pulumi-lang-go="`stringValue`" pulumi-lang-python="`string_value`" pulumi-lang-yaml="`stringValue`" pulumi-lang-java="`stringValue`">`string_value`</span> should be set.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfigNewValue
      newValue;

  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfig({
    required this.newValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['newValue'] = newValue.toMap();
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfig.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfig(
      newValue:
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationReplaceConfigNewValue
              .fromMap((map['newValue'] as Map).cast<String, dynamic>()),
    );
  }
}
