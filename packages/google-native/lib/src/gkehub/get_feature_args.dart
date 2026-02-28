// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_get_feature_args_doc}
/// Arguments for getFeature.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_get_feature_args_doc}
class GetFeatureArgs {
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureArgs].
  /// [featureId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureArgs({
    required String featureId,
    required String location,
    String? project,
  })  : featureId = pulumi.Input.asInput<String>(featureId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureId'] = featureId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureArgs(
      featureId: map['featureId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
