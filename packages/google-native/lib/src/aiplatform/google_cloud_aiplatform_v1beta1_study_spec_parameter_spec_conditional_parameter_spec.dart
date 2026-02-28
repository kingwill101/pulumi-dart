// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_conditional_parameter_spec_categorical_value_condition.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_conditional_parameter_spec_discrete_value_condition.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_conditional_parameter_spec_int_value_condition.dart';

/// Represents a parameter spec with condition from its parent parameter.
class GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec {
  /// The spec for a conditional parameter.
  final GoogleCloudAiplatformV1beta1StudySpecParameterSpec parameterSpec;

  /// The spec for matching values from a parent parameter of `CATEGORICAL` type.
  final GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition?
      parentCategoricalValues;

  /// The spec for matching values from a parent parameter of `DISCRETE` type.
  final GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition?
      parentDiscreteValues;

  /// The spec for matching values from a parent parameter of `INTEGER` type.
  final GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueCondition?
      parentIntValues;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec].
  /// [parameterSpec] The spec for a conditional parameter.
  /// [parentCategoricalValues] The spec for matching values from a parent parameter of `CATEGORICAL` type.
  /// [parentDiscreteValues] The spec for matching values from a parent parameter of `DISCRETE` type.
  /// [parentIntValues] The spec for matching values from a parent parameter of `INTEGER` type.
  GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec({
    required this.parameterSpec,
    this.parentCategoricalValues,
    this.parentDiscreteValues,
    this.parentIntValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameterSpec'] = parameterSpec.toMap();
    final parentCategoricalValuesValue = parentCategoricalValues;
    if (parentCategoricalValuesValue != null) {
      map['parentCategoricalValues'] = parentCategoricalValuesValue.toMap();
    }
    final parentDiscreteValuesValue = parentDiscreteValues;
    if (parentDiscreteValuesValue != null) {
      map['parentDiscreteValues'] = parentDiscreteValuesValue.toMap();
    }
    final parentIntValuesValue = parentIntValues;
    if (parentIntValuesValue != null) {
      map['parentIntValues'] = parentIntValuesValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpec(
      parameterSpec: GoogleCloudAiplatformV1beta1StudySpecParameterSpec.fromMap(
          (map['parameterSpec'] as Map).cast<String, dynamic>()),
      parentCategoricalValues: map['parentCategoricalValues'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition
              .fromMap((map['parentCategoricalValues'] as Map)
                  .cast<String, dynamic>()),
      parentDiscreteValues: map['parentDiscreteValues'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition
              .fromMap(
                  (map['parentDiscreteValues'] as Map).cast<String, dynamic>()),
      parentIntValues: map['parentIntValues'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueCondition
              .fromMap((map['parentIntValues'] as Map).cast<String, dynamic>()),
    );
  }
}
