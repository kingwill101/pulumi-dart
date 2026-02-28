// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_feature_view_aiplatform_v1beta1_args_doc}
/// Arguments for getFeatureView.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_feature_view_aiplatform_v1beta1_args_doc}
class GetFeatureViewAiplatformV1beta1Args {
  final pulumi.Input<String> featureOnlineStoreId;
  final pulumi.Input<String> featureViewId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureViewAiplatformV1beta1Args].
  /// [featureOnlineStoreId] Required.
  /// [featureViewId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureViewAiplatformV1beta1Args({
    required String featureOnlineStoreId,
    required String featureViewId,
    required String location,
    String? project,
  })  : featureOnlineStoreId =
            pulumi.Input.asInput<String>(featureOnlineStoreId),
        featureViewId = pulumi.Input.asInput<String>(featureViewId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureOnlineStoreId'] = featureOnlineStoreId;
    map['featureViewId'] = featureViewId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeatureViewAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureViewAiplatformV1beta1Args(
      featureOnlineStoreId: map['featureOnlineStoreId'] as String,
      featureViewId: map['featureViewId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
