// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_v1alpha1_get_connection_profile_datastream_v1alpha1_args_doc}
/// Arguments for getConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1alpha1_get_connection_profile_datastream_v1alpha1_args_doc}
class GetConnectionProfileDatastreamV1alpha1Args {
  final pulumi.Input<String> connectionProfileId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectionProfileDatastreamV1alpha1Args].
  /// [connectionProfileId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConnectionProfileDatastreamV1alpha1Args({
    required String connectionProfileId,
    required String location,
    String? project,
  })  : connectionProfileId = pulumi.Input.asInput<String>(connectionProfileId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionProfileId'] = connectionProfileId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConnectionProfileDatastreamV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetConnectionProfileDatastreamV1alpha1Args(
      connectionProfileId: map['connectionProfileId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
