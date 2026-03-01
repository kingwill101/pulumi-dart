// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_featurestore_aiplatform_v1beta1_args_doc}
/// Arguments for getFeaturestore.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_featurestore_aiplatform_v1beta1_args_doc}
class GetFeaturestoreAiplatformV1beta1Args {
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeaturestoreAiplatformV1beta1Args].
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFeaturestoreAiplatformV1beta1Args({
    required String featurestoreId,
    required String location,
    String? project,
  }) : featurestoreId = pulumi.Input.asInput<String>(featurestoreId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurestoreId': featurestoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFeaturestoreAiplatformV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeaturestoreAiplatformV1beta1Args(
      featurestoreId: map['featurestoreId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
