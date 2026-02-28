// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_feature_gkehub_v1alpha_args_doc}
/// Arguments for getFeature.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_feature_gkehub_v1alpha_args_doc}
class GetFeatureGkehubV1alphaArgs {
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeatureGkehubV1alphaArgs].
  /// [featureId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeatureGkehubV1alphaArgs({
    required String featureId,
    required String location,
    String? project,
  }) :
      featureId = pulumi.Input.asInput<String>(featureId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureId': featureId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeatureGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureGkehubV1alphaArgs(
      featureId: map['featureId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

