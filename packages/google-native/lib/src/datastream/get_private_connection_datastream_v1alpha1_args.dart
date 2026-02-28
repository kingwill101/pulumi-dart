// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_v1alpha1_get_private_connection_datastream_v1alpha1_args_doc}
/// Arguments for getPrivateConnection.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1alpha1_get_private_connection_datastream_v1alpha1_args_doc}
class GetPrivateConnectionDatastreamV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPrivateConnectionDatastreamV1alpha1Args].
  /// [location] Required.
  /// [privateConnectionId] Required.
  /// [project] Optional.
  GetPrivateConnectionDatastreamV1alpha1Args({
    required String location,
    required String privateConnectionId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        privateConnectionId = pulumi.Input.asInput<String>(privateConnectionId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['privateConnectionId'] = privateConnectionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPrivateConnectionDatastreamV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetPrivateConnectionDatastreamV1alpha1Args(
      location: map['location'] as String,
      privateConnectionId: map['privateConnectionId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
