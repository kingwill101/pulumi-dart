// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_v1_get_stream_args_doc}
/// Arguments for getStream.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1_get_stream_args_doc}
class GetStreamArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> streamId;

  /// Creates a new [GetStreamArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [streamId] Required.
  GetStreamArgs({
    required String location,
    String? project,
    required String streamId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       streamId = pulumi.Input.asInput<String>(streamId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'streamId': streamId,
    };
  }

  factory GetStreamArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      streamId: map['streamId'] as String,
    );
  }
}
