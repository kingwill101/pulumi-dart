// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_image_transformations_transform.dart';

class PreventionDeidentifyTemplateDeidentifyConfigImageTransformations {
  /// For determination of how redaction of images should occur.
  /// Structure is documented below.
  final List<PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform> transforms;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigImageTransformations].
  /// [transforms] For determination of how redaction of images should occur.
  PreventionDeidentifyTemplateDeidentifyConfigImageTransformations({
    required this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transforms': pulumi.Input.encodeList<PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform, Map<String, dynamic>>(transforms, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigImageTransformations.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigImageTransformations(
      transforms: pulumi.Input.decodeList<PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform>(map['transforms'], (value) => PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

