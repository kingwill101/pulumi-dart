// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_v1_get_channel_args_doc}
/// Arguments for getChannel.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1_get_channel_args_doc}
class GetChannelArgs {
  final pulumi.Input<String> channelId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetChannelArgs].
  /// [channelId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetChannelArgs({
    required String channelId,
    required String location,
    String? project,
  }) :
      channelId = pulumi.Input.asInput<String>(channelId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelArgs(
      channelId: map['channelId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

