// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_index_endpoint_aiplatform_v1beta1_args_doc}
/// Arguments for getIndexEndpoint.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_index_endpoint_aiplatform_v1beta1_args_doc}
class GetIndexEndpointAiplatformV1beta1Args {
  final pulumi.Input<String> indexEndpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIndexEndpointAiplatformV1beta1Args].
  /// [indexEndpointId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetIndexEndpointAiplatformV1beta1Args({
    required String indexEndpointId,
    required String location,
    String? project,
  })  : indexEndpointId = pulumi.Input.asInput<String>(indexEndpointId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexEndpointId'] = indexEndpointId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIndexEndpointAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetIndexEndpointAiplatformV1beta1Args(
      indexEndpointId: map['indexEndpointId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
