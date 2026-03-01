// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_image_transformations_transform_selected_info_types_info_type.dart';

class PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypes {
  /// InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
  /// all findings that correspond to infoTypes that were requested in InspectConfig.
  /// Structure is documented below.
  final List<
    PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoType
  >
  infoTypes;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypes].
  /// [infoTypes] InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
  PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypes({
    required this.infoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes':
          pulumi.Input.encodeList<
            PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoType,
            Map<String, dynamic>
          >(infoTypes, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypes.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypes(
      infoTypes:
          pulumi.Input.decodeList<
            PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoType
          >(
            map['infoTypes'],
            (value) =>
                PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoType.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
