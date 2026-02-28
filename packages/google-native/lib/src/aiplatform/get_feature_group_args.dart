// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_feature_group_args_doc}
/// Arguments for getFeatureGroup.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_feature_group_args_doc}
class GetFeatureGroupArgs {
  final pulumi.Input<String> featureGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureGroupArgs].
  /// [featureGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureGroupArgs({
    required String featureGroupId,
    required String location,
    String? project,
  })  : featureGroupId = pulumi.Input.asInput<String>(featureGroupId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureGroupId'] = featureGroupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeatureGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureGroupArgs(
      featureGroupId: map['featureGroupId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
