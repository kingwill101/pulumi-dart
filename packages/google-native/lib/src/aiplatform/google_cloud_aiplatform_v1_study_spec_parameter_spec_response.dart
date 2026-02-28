// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_categorical_value_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_conditional_parameter_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_discrete_value_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_double_value_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_integer_value_spec_response.dart';

/// Represents a single parameter to optimize.
class GoogleCloudAiplatformV1StudySpecParameterSpecResponse {
  /// The value spec for a 'CATEGORICAL' parameter.
  final GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpecResponse
      categoricalValueSpec;

  /// A conditional parameter node is active if the parameter's value matches the conditional node's parent_value_condition. If two items in conditional_parameter_specs have the same name, they must have disjoint parent_value_condition.
  final List<
          GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecResponse>
      conditionalParameterSpecs;

  /// The value spec for a 'DISCRETE' parameter.
  final GoogleCloudAiplatformV1StudySpecParameterSpecDiscreteValueSpecResponse
      discreteValueSpec;

  /// The value spec for a 'DOUBLE' parameter.
  final GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpecResponse
      doubleValueSpec;

  /// The value spec for an 'INTEGER' parameter.
  final GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpecResponse
      integerValueSpec;

  /// The ID of the parameter. Must not contain whitespaces and must be unique amongst all ParameterSpecs.
  final String parameterId;

  /// How the parameter should be scaled. Leave unset for `CATEGORICAL` parameters.
  final String scaleType;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecParameterSpecResponse].
  /// [categoricalValueSpec] The value spec for a 'CATEGORICAL' parameter.
  /// [conditionalParameterSpecs] A conditional parameter node is active if the parameter's value matches the conditional node's parent_value_condition. If two items in conditional_parameter_specs have the same name, they must have disjoint parent_value_condition.
  /// [discreteValueSpec] The value spec for a 'DISCRETE' parameter.
  /// [doubleValueSpec] The value spec for a 'DOUBLE' parameter.
  /// [integerValueSpec] The value spec for an 'INTEGER' parameter.
  /// [parameterId] The ID of the parameter. Must not contain whitespaces and must be unique amongst all ParameterSpecs.
  /// [scaleType] How the parameter should be scaled. Leave unset for `CATEGORICAL` parameters.
  GoogleCloudAiplatformV1StudySpecParameterSpecResponse({
    required this.categoricalValueSpec,
    required this.conditionalParameterSpecs,
    required this.discreteValueSpec,
    required this.doubleValueSpec,
    required this.integerValueSpec,
    required this.parameterId,
    required this.scaleType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['categoricalValueSpec'] = categoricalValueSpec.toMap();
    map['conditionalParameterSpecs'] = pulumi.Input.encodeList<
        GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecResponse,
        Map<String,
            dynamic>>(conditionalParameterSpecs, (value) => value.toMap());
    map['discreteValueSpec'] = discreteValueSpec.toMap();
    map['doubleValueSpec'] = doubleValueSpec.toMap();
    map['integerValueSpec'] = integerValueSpec.toMap();
    map['parameterId'] = parameterId;
    map['scaleType'] = scaleType;
    return map;
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecResponse(
      categoricalValueSpec:
          GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpecResponse
              .fromMap(
                  (map['categoricalValueSpec'] as Map).cast<String, dynamic>()),
      conditionalParameterSpecs: pulumi.Input.decodeList<
              GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecResponse>(
          map['conditionalParameterSpecs'],
          (value) =>
              GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      discreteValueSpec:
          GoogleCloudAiplatformV1StudySpecParameterSpecDiscreteValueSpecResponse
              .fromMap(
                  (map['discreteValueSpec'] as Map).cast<String, dynamic>()),
      doubleValueSpec:
          GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpecResponse
              .fromMap((map['doubleValueSpec'] as Map).cast<String, dynamic>()),
      integerValueSpec:
          GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpecResponse
              .fromMap(
                  (map['integerValueSpec'] as Map).cast<String, dynamic>()),
      parameterId: map['parameterId'] as String,
      scaleType: map['scaleType'] as String,
    );
  }
}
