// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_conditional_parameter_spec_categorical_value_condition_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_conditional_parameter_spec_discrete_value_condition_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_conditional_parameter_spec_int_value_condition_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_response.dart';

/// Represents a parameter spec with condition from its parent parameter.
class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecResponse {
  /// The spec for a conditional parameter.
  final GoogleCloudAiplatformV1StudySpecParameterSpecResponse parameterSpec;

  /// The spec for matching values from a parent parameter of `CATEGORICAL` type.
  final GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueConditionResponse
      parentCategoricalValues;

  /// The spec for matching values from a parent parameter of `DISCRETE` type.
  final GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueConditionResponse
      parentDiscreteValues;

  /// The spec for matching values from a parent parameter of `INTEGER` type.
  final GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueConditionResponse
      parentIntValues;

  GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecResponse({
    required this.parameterSpec,
    required this.parentCategoricalValues,
    required this.parentDiscreteValues,
    required this.parentIntValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameterSpec'] = parameterSpec.toMap();
    map['parentCategoricalValues'] = parentCategoricalValues.toMap();
    map['parentDiscreteValues'] = parentDiscreteValues.toMap();
    map['parentIntValues'] = parentIntValues.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecResponse(
      parameterSpec:
          GoogleCloudAiplatformV1StudySpecParameterSpecResponse.fromMap(
              (map['parameterSpec'] as Map).cast<String, dynamic>()),
      parentCategoricalValues:
          GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueConditionResponse
              .fromMap((map['parentCategoricalValues'] as Map)
                  .cast<String, dynamic>()),
      parentDiscreteValues:
          GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueConditionResponse
              .fromMap(
                  (map['parentDiscreteValues'] as Map).cast<String, dynamic>()),
      parentIntValues:
          GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueConditionResponse
              .fromMap((map['parentIntValues'] as Map).cast<String, dynamic>()),
    );
  }
}
