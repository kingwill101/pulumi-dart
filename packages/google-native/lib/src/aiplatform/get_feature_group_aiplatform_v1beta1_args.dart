// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_feature_group_aiplatform_v1beta1_args_doc}
/// Arguments for getFeatureGroup.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_feature_group_aiplatform_v1beta1_args_doc}
class GetFeatureGroupAiplatformV1beta1Args {
  final pulumi.Input<String> featureGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureGroupAiplatformV1beta1Args].
  /// [featureGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureGroupAiplatformV1beta1Args({
    required String featureGroupId,
    required String location,
    String? project,
  }) :
      featureGroupId = pulumi.Input.asInput<String>(featureGroupId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureGroupId': featureGroupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureGroupAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFeatureGroupAiplatformV1beta1Args(
      featureGroupId: map['featureGroupId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

