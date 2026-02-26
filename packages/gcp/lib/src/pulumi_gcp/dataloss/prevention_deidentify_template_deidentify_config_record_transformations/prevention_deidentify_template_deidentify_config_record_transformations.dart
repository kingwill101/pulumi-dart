// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../prevention_deidentify_template_deidentify_config_record_transformations_field_transformation/prevention_deidentify_template_deidentify_config_record_transformations_field_transformation.dart';
import '../prevention_deidentify_template_deidentify_config_record_transformations_record_suppression/prevention_deidentify_template_deidentify_config_record_transformations_record_suppression.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations {
  /// Transform the record by applying various field transformations.
  /// Structure is documented below.
  final List<
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation>?
      fieldTransformations;

  /// Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output.
  /// Structure is documented below.
  final List<
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression>?
      recordSuppressions;

  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations({
    this.fieldTransformations,
    this.recordSuppressions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldTransformationsValue = fieldTransformations;
    if (fieldTransformationsValue != null) {
      map['fieldTransformations'] = Input.encodeList<
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation,
          Map<String,
              dynamic>>(fieldTransformationsValue, (value) => value.toMap());
    }
    final recordSuppressionsValue = recordSuppressions;
    if (recordSuppressionsValue != null) {
      map['recordSuppressions'] = Input.encodeList<
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression,
          Map<String,
              dynamic>>(recordSuppressionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations(
      fieldTransformations: map['fieldTransformations'] == null
          ? null
          : Input.decodeList<
                  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation>(
              map['fieldTransformations'],
              (value) =>
                  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation
                      .fromMap((value as Map).cast<String, dynamic>())),
      recordSuppressions: map['recordSuppressions'] == null
          ? null
          : Input.decodeList<
                  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression>(
              map['recordSuppressions'],
              (value) =>
                  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
