// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_info_type.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformation {
  /// InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
  /// all findings that correspond to infoTypes that were requested in InspectConfig.
  /// Structure is documented below.
  final List<
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationInfoType>?
      infoTypes;

  /// Apply the transformation to the entire field.
  /// The `primitive_transformation` block must only contain one argument, corresponding to the type of transformation.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformation
      primitiveTransformation;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformation].
  /// [infoTypes] InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
  /// [primitiveTransformation] Apply the transformation to the entire field.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformation({
    this.infoTypes,
    required this.primitiveTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final infoTypesValue = infoTypes;
    if (infoTypesValue != null) {
      map['infoTypes'] = pulumi.Input.encodeList<
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationInfoType,
          Map<String, dynamic>>(infoTypesValue, (value) => value.toMap());
    }
    map['primitiveTransformation'] = primitiveTransformation.toMap();
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformation.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformation(
      infoTypes: map['infoTypes'] == null
          ? null
          : pulumi.Input.decodeList<
                  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationInfoType>(
              map['infoTypes'],
              (value) =>
                  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationInfoType
                      .fromMap((value as Map).cast<String, dynamic>())),
      primitiveTransformation:
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformation
              .fromMap((map['primitiveTransformation'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
