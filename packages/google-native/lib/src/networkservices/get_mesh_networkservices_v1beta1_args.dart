// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_mesh_networkservices_v1beta1_args_doc}
/// Arguments for getMesh.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_mesh_networkservices_v1beta1_args_doc}
class GetMeshNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> meshId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMeshNetworkservicesV1beta1Args].
  /// [location] Required.
  /// [meshId] Required.
  /// [project] Optional.
  GetMeshNetworkservicesV1beta1Args({
    required String location,
    required String meshId,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       meshId = pulumi.Input.asInput<String>(meshId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'meshId': meshId,
      'project': ?project,
    };
  }

  factory GetMeshNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMeshNetworkservicesV1beta1Args(
      location: map['location'] as String,
      meshId: map['meshId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
