// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_categorical_value_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_conditional_parameter_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_discrete_value_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_double_value_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_integer_value_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_scale_type.dart';

/// Represents a single parameter to optimize.
class GoogleCloudAiplatformV1StudySpecParameterSpec {
  /// The value spec for a 'CATEGORICAL' parameter.
  final GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpec?
      categoricalValueSpec;

  /// A conditional parameter node is active if the parameter's value matches the conditional node's parent_value_condition. If two items in conditional_parameter_specs have the same name, they must have disjoint parent_value_condition.
  final List<
          GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec>?
      conditionalParameterSpecs;

  /// The value spec for a 'DISCRETE' parameter.
  final GoogleCloudAiplatformV1StudySpecParameterSpecDiscreteValueSpec?
      discreteValueSpec;

  /// The value spec for a 'DOUBLE' parameter.
  final GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpec?
      doubleValueSpec;

  /// The value spec for an 'INTEGER' parameter.
  final GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpec?
      integerValueSpec;

  /// The ID of the parameter. Must not contain whitespaces and must be unique amongst all ParameterSpecs.
  final String parameterId;

  /// How the parameter should be scaled. Leave unset for `CATEGORICAL` parameters.
  final GoogleCloudAiplatformV1StudySpecParameterSpecScaleType? scaleType;

  GoogleCloudAiplatformV1StudySpecParameterSpec({
    this.categoricalValueSpec,
    this.conditionalParameterSpecs,
    this.discreteValueSpec,
    this.doubleValueSpec,
    this.integerValueSpec,
    required this.parameterId,
    this.scaleType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoricalValueSpecValue = categoricalValueSpec;
    if (categoricalValueSpecValue != null) {
      map['categoricalValueSpec'] = categoricalValueSpecValue.toMap();
    }
    final conditionalParameterSpecsValue = conditionalParameterSpecs;
    if (conditionalParameterSpecsValue != null) {
      map['conditionalParameterSpecs'] = Input.encodeList<
          GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec,
          Map<String,
              dynamic>>(conditionalParameterSpecsValue, (value) => value.toMap());
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
    map['parameterId'] = parameterId;
    final scaleTypeValue = scaleType;
    if (scaleTypeValue != null) {
      map['scaleType'] = scaleTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpec(
      categoricalValueSpec: map['categoricalValueSpec'] == null
          ? null
          : GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpec
              .fromMap(
                  (map['categoricalValueSpec'] as Map).cast<String, dynamic>()),
      conditionalParameterSpecs: map['conditionalParameterSpecs'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec>(
              map['conditionalParameterSpecs'],
              (value) =>
                  GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec
                      .fromMap((value as Map).cast<String, dynamic>())),
      discreteValueSpec: map['discreteValueSpec'] == null
          ? null
          : GoogleCloudAiplatformV1StudySpecParameterSpecDiscreteValueSpec
              .fromMap(
                  (map['discreteValueSpec'] as Map).cast<String, dynamic>()),
      doubleValueSpec: map['doubleValueSpec'] == null
          ? null
          : GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpec
              .fromMap((map['doubleValueSpec'] as Map).cast<String, dynamic>()),
      integerValueSpec: map['integerValueSpec'] == null
          ? null
          : GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpec
              .fromMap(
                  (map['integerValueSpec'] as Map).cast<String, dynamic>()),
      parameterId: map['parameterId'] as String,
      scaleType: map['scaleType'] == null
          ? null
          : GoogleCloudAiplatformV1StudySpecParameterSpecScaleType.fromValue(
              map['scaleType'] as String),
    );
  }
}
