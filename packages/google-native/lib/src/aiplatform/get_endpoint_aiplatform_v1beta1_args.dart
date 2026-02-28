// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_endpoint_aiplatform_v1beta1_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_endpoint_aiplatform_v1beta1_args_doc}
class GetEndpointAiplatformV1beta1Args {
  final pulumi.Input<String> endpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEndpointAiplatformV1beta1Args].
  /// [endpointId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEndpointAiplatformV1beta1Args({
    required String endpointId,
    required String location,
    String? project,
  })  : endpointId = pulumi.Input.asInput<String>(endpointId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointId'] = endpointId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEndpointAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEndpointAiplatformV1beta1Args(
      endpointId: map['endpointId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
