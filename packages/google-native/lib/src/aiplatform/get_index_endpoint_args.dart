// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_index_endpoint_args_doc}
/// Arguments for getIndexEndpoint.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_index_endpoint_args_doc}
class GetIndexEndpointArgs {
  final pulumi.Input<String> indexEndpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIndexEndpointArgs].
  /// [indexEndpointId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetIndexEndpointArgs({
    required String indexEndpointId,
    required String location,
    String? project,
  }) : indexEndpointId = pulumi.Input.asInput<String>(indexEndpointId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexEndpointId': indexEndpointId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetIndexEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetIndexEndpointArgs(
      indexEndpointId: map['indexEndpointId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
