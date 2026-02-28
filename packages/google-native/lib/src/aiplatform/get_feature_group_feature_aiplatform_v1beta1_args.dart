// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_feature_group_feature_aiplatform_v1beta1_args_doc}
/// Arguments for getFeatureGroupFeature.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_feature_group_feature_aiplatform_v1beta1_args_doc}
class GetFeatureGroupFeatureAiplatformV1beta1Args {
  final pulumi.Input<String> featureGroupId;
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureGroupFeatureAiplatformV1beta1Args].
  /// [featureGroupId] Required.
  /// [featureId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureGroupFeatureAiplatformV1beta1Args({
    required String featureGroupId,
    required String featureId,
    required String location,
    String? project,
  })  : featureGroupId = pulumi.Input.asInput<String>(featureGroupId),
        featureId = pulumi.Input.asInput<String>(featureId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureGroupId'] = featureGroupId;
    map['featureId'] = featureId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeatureGroupFeatureAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureGroupFeatureAiplatformV1beta1Args(
      featureGroupId: map['featureGroupId'] as String,
      featureId: map['featureId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
