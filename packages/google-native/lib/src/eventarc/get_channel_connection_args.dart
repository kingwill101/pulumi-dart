// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_v1_get_channel_connection_args_doc}
/// Arguments for getChannelConnection.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1_get_channel_connection_args_doc}
class GetChannelConnectionArgs {
  final pulumi.Input<String> channelConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetChannelConnectionArgs].
  /// [channelConnectionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetChannelConnectionArgs({
    required String channelConnectionId,
    required String location,
    String? project,
  })  : channelConnectionId = pulumi.Input.asInput<String>(channelConnectionId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelConnectionId'] = channelConnectionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetChannelConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelConnectionArgs(
      channelConnectionId: map['channelConnectionId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
