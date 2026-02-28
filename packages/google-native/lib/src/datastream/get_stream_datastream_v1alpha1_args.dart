// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_v1alpha1_get_stream_datastream_v1alpha1_args_doc}
/// Arguments for getStream.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1alpha1_get_stream_datastream_v1alpha1_args_doc}
class GetStreamDatastreamV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> streamId;

  /// Creates a new [GetStreamDatastreamV1alpha1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [streamId] Required.
  GetStreamDatastreamV1alpha1Args({
    required String location,
    String? project,
    required String streamId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        streamId = pulumi.Input.asInput<String>(streamId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['streamId'] = streamId;
    return map;
  }

  factory GetStreamDatastreamV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetStreamDatastreamV1alpha1Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      streamId: map['streamId'] as String,
    );
  }
}
