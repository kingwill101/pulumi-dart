// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_feature_view_args_doc}
/// Arguments for getFeatureView.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_feature_view_args_doc}
class GetFeatureViewArgs {
  final pulumi.Input<String> featureOnlineStoreId;
  final pulumi.Input<String> featureViewId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureViewArgs].
  /// [featureOnlineStoreId] Required.
  /// [featureViewId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureViewArgs({
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

  factory GetFeatureViewArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureViewArgs(
      featureOnlineStoreId: map['featureOnlineStoreId'] as String,
      featureViewId: map['featureViewId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
