// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_featurestore_args_doc}
/// Arguments for getFeaturestore.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_featurestore_args_doc}
class GetFeaturestoreArgs {
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeaturestoreArgs].
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeaturestoreArgs({
    required String featurestoreId,
    required String location,
    String? project,
  })  : featurestoreId = pulumi.Input.asInput<String>(featurestoreId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featurestoreId'] = featurestoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeaturestoreArgs.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreArgs(
      featurestoreId: map['featurestoreId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
