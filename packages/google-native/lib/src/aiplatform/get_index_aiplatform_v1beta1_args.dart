// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_index_aiplatform_v1beta1_args_doc}
/// Arguments for getIndex.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_index_aiplatform_v1beta1_args_doc}
class GetIndexAiplatformV1beta1Args {
  final pulumi.Input<String> indexId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIndexAiplatformV1beta1Args].
  /// [indexId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetIndexAiplatformV1beta1Args({
    required String indexId,
    required String location,
    String? project,
  })  : indexId = pulumi.Input.asInput<String>(indexId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexId'] = indexId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIndexAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIndexAiplatformV1beta1Args(
      indexId: map['indexId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
