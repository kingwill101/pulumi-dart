// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_ml_v1_study_config_parameter_spec_categorical_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_discrete_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_double_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_integer_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_categorical_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_discrete_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_matching_parent_int_value_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_scale_type.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_type.dart';

/// Represents a single parameter to optimize.
class GoogleCloudMlV1StudyConfigParameterSpec {
  /// The value spec for a 'CATEGORICAL' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec?
      categoricalValueSpec;

  /// A child node is active if the parameter's value matches the child node's matching_parent_values. If two items in child_parameter_specs have the same name, they must have disjoint matching_parent_values.
  final List<GoogleCloudMlV1StudyConfigParameterSpec>? childParameterSpecs;

  /// The value spec for a 'DISCRETE' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec?
      discreteValueSpec;

  /// The value spec for a 'DOUBLE' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec? doubleValueSpec;

  /// The value spec for an 'INTEGER' parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec?
      integerValueSpec;

  /// The parameter name must be unique amongst all ParameterSpecs.
  final String parameter;
  final GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec?
      parentCategoricalValues;
  final GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec?
      parentDiscreteValues;
  final GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec?
      parentIntValues;

  /// How the parameter should be scaled. Leave unset for categorical parameters.
  final GoogleCloudMlV1StudyConfigParameterSpecScaleType? scaleType;

  /// The type of the parameter.
  final GoogleCloudMlV1StudyConfigParameterSpecType type;

  GoogleCloudMlV1StudyConfigParameterSpec({
    this.categoricalValueSpec,
    this.childParameterSpecs,
    this.discreteValueSpec,
    this.doubleValueSpec,
    this.integerValueSpec,
    required this.parameter,
    this.parentCategoricalValues,
    this.parentDiscreteValues,
    this.parentIntValues,
    this.scaleType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoricalValueSpecValue = categoricalValueSpec;
    if (categoricalValueSpecValue != null) {
      map['categoricalValueSpec'] = categoricalValueSpecValue.toMap();
    }
    final childParameterSpecsValue = childParameterSpecs;
    if (childParameterSpecsValue != null) {
      map['childParameterSpecs'] = Input.encodeList<
              GoogleCloudMlV1StudyConfigParameterSpec, Map<String, dynamic>>(
          childParameterSpecsValue, (value) => value.toMap());
    }
    final discreteValueSpecValue = discreteValueSpec;
    if (discreteValueSpecValue != null) {
      map['discreteValueSpec'] = discreteValueSpecValue.toMap();
    }
    final doubleValueSpecValue = doubleValueSpec;
    if (doubleValueSpecValue != null) {
      map['doubleValueSpec'] = doubleValueSpecValue.toMap();
    }
    final integerValueSpecValue = integerValueSpec;
    if (integerValueSpecValue != null) {
      map['integerValueSpec'] = integerValueSpecValue.toMap();
    }
    map['parameter'] = parameter;
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
    final scaleTypeValue = scaleType;
    if (scaleTypeValue != null) {
      map['scaleType'] = scaleTypeValue.value;
    }
    map['type'] = type.value;
    return map;
  }

  factory GoogleCloudMlV1StudyConfigParameterSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpec(
      categoricalValueSpec: map['categoricalValueSpec'] == null
          ? null
          : GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec.fromMap(
              (map['categoricalValueSpec'] as Map).cast<String, dynamic>()),
      childParameterSpecs: map['childParameterSpecs'] == null
          ? null
          : Input.decodeList<GoogleCloudMlV1StudyConfigParameterSpec>(
              map['childParameterSpecs'],
              (value) => GoogleCloudMlV1StudyConfigParameterSpec.fromMap(
                  (value as Map).cast<String, dynamic>())),
      discreteValueSpec: map['discreteValueSpec'] == null
          ? null
          : GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec.fromMap(
              (map['discreteValueSpec'] as Map).cast<String, dynamic>()),
      doubleValueSpec: map['doubleValueSpec'] == null
          ? null
          : GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec.fromMap(
              (map['doubleValueSpec'] as Map).cast<String, dynamic>()),
      integerValueSpec: map['integerValueSpec'] == null
          ? null
          : GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec.fromMap(
              (map['integerValueSpec'] as Map).cast<String, dynamic>()),
      parameter: map['parameter'] as String,
      parentCategoricalValues: map['parentCategoricalValues'] == null
          ? null
          : GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec
              .fromMap((map['parentCategoricalValues'] as Map)
                  .cast<String, dynamic>()),
      parentDiscreteValues: map['parentDiscreteValues'] == null
          ? null
          : GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec
              .fromMap(
                  (map['parentDiscreteValues'] as Map).cast<String, dynamic>()),
      parentIntValues: map['parentIntValues'] == null
          ? null
          : GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec
              .fromMap((map['parentIntValues'] as Map).cast<String, dynamic>()),
      scaleType: map['scaleType'] == null
          ? null
          : GoogleCloudMlV1StudyConfigParameterSpecScaleType.fromValue(
              map['scaleType'] as String),
      type: GoogleCloudMlV1StudyConfigParameterSpecType.fromValue(
          map['type'] as String),
    );
  }
}
