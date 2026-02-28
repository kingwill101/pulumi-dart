// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_study_config_parameter_spec_categorical_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_discrete_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_double_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_integer_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_categorical_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_discrete_value_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_int_value_spec_response.dart';

/// Represents a single parameter to optimize.
class GoogleCloudMlV1StudyConfigParameterSpecResponse {
  /// The value spec for a 'CATEGORICAL' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpecResponse
      categoricalValueSpec;

  /// A child node is active if the parameter's value matches the child node's matching_parent_values. If two items in child_parameter_specs have the same name, they must have disjoint matching_parent_values.
  final List<GoogleCloudMlV1StudyConfigParameterSpecResponse>
      childParameterSpecs;

  /// The value spec for a 'DISCRETE' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpecResponse
      discreteValueSpec;

  /// The value spec for a 'DOUBLE' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse
      doubleValueSpec;

  /// The value spec for an 'INTEGER' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse
      integerValueSpec;

  /// The parameter name must be unique amongst all ParameterSpecs.
  final String parameter;
  final GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpecResponse
      parentCategoricalValues;
  final GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpecResponse
      parentDiscreteValues;
  final GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse
      parentIntValues;

  /// How the parameter should be scaled. Leave unset for categorical parameters.
  final String scaleType;

  /// The type of the parameter.
  final String type;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecResponse].
  /// [categoricalValueSpec] The value spec for a 'CATEGORICAL' parameter.
  /// [childParameterSpecs] A child node is active if the parameter's value matches the child node's matching_parent_values. If two items in child_parameter_specs have the same name, they must have disjoint matching_parent_values.
  /// [discreteValueSpec] The value spec for a 'DISCRETE' parameter.
  /// [doubleValueSpec] The value spec for a 'DOUBLE' parameter.
  /// [integerValueSpec] The value spec for an 'INTEGER' parameter.
  /// [parameter] The parameter name must be unique amongst all ParameterSpecs.
  /// [parentCategoricalValues] Required.
  /// [parentDiscreteValues] Required.
  /// [parentIntValues] Required.
  /// [scaleType] How the parameter should be scaled. Leave unset for categorical parameters.
  /// [type] The type of the parameter.
  GoogleCloudMlV1StudyConfigParameterSpecResponse({
    required this.categoricalValueSpec,
    required this.childParameterSpecs,
    required this.discreteValueSpec,
    required this.doubleValueSpec,
    required this.integerValueSpec,
    required this.parameter,
    required this.parentCategoricalValues,
    required this.parentDiscreteValues,
    required this.parentIntValues,
    required this.scaleType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['categoricalValueSpec'] = categoricalValueSpec.toMap();
    map['childParameterSpecs'] = pulumi.Input.encodeList<
        GoogleCloudMlV1StudyConfigParameterSpecResponse,
        Map<String, dynamic>>(childParameterSpecs, (value) => value.toMap());
    map['discreteValueSpec'] = discreteValueSpec.toMap();
    map['doubleValueSpec'] = doubleValueSpec.toMap();
    map['integerValueSpec'] = integerValueSpec.toMap();
    map['parameter'] = parameter;
    map['parentCategoricalValues'] = parentCategoricalValues.toMap();
    map['parentDiscreteValues'] = parentDiscreteValues.toMap();
    map['parentIntValues'] = parentIntValues.toMap();
    map['scaleType'] = scaleType;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecResponse(
      categoricalValueSpec:
          GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpecResponse
              .fromMap(
                  (map['categoricalValueSpec'] as Map).cast<String, dynamic>()),
      childParameterSpecs: pulumi.Input.decodeList<
              GoogleCloudMlV1StudyConfigParameterSpecResponse>(
          map['childParameterSpecs'],
          (value) => GoogleCloudMlV1StudyConfigParameterSpecResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      discreteValueSpec:
          GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpecResponse
              .fromMap(
                  (map['discreteValueSpec'] as Map).cast<String, dynamic>()),
      doubleValueSpec:
          GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpecResponse
              .fromMap((map['doubleValueSpec'] as Map).cast<String, dynamic>()),
      integerValueSpec:
          GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpecResponse
              .fromMap(
                  (map['integerValueSpec'] as Map).cast<String, dynamic>()),
      parameter: map['parameter'] as String,
      parentCategoricalValues:
          GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpecResponse
              .fromMap((map['parentCategoricalValues'] as Map)
                  .cast<String, dynamic>()),
      parentDiscreteValues:
          GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpecResponse
              .fromMap(
                  (map['parentDiscreteValues'] as Map).cast<String, dynamic>()),
      parentIntValues:
          GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse
              .fromMap((map['parentIntValues'] as Map).cast<String, dynamic>()),
      scaleType: map['scaleType'] as String,
      type: map['type'] as String,
    );
  }
}
