// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_info_type.dart';
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation {
  /// InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
  /// all findings that correspond to infoTypes that were requested in InspectConfig.
  /// Structure is documented below.
  final List<
    PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType
  >?
  infoTypes;

  /// Apply the transformation to the entire field.
  /// The `primitive_transformation` block must only contain one argument, corresponding to the type of transformation.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformation
  primitiveTransformation;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation].
  /// [infoTypes] InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
  /// [primitiveTransformation] Apply the transformation to the entire field.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation({
    this.infoTypes,
    required this.primitiveTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': ?infoTypes == null
          ? null
          : pulumi.Input.encodeList<
              PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType,
              Map<String, dynamic>
            >(infoTypes!, (value) => value.toMap()),
      'primitiveTransformation': primitiveTransformation.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation(
      infoTypes: map['infoTypes'] == null
          ? null
          : pulumi.Input.decodeList<
              PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType
            >(
              map['infoTypes'],
              (value) =>
                  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      primitiveTransformation:
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformation.fromMap(
            (map['primitiveTransformation'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
