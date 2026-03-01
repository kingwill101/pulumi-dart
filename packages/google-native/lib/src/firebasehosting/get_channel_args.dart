// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_get_channel_args_doc}
/// Arguments for getChannel.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_get_channel_args_doc}
class GetChannelArgs {
  final pulumi.Input<String> channelId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;

  /// Creates a new [GetChannelArgs].
  /// [channelId] Required.
  /// [project] Optional.
  /// [siteId] Required.
  GetChannelArgs({
    required String channelId,
    String? project,
    required String siteId,
  }) : channelId = pulumi.Input.asInput<String>(channelId),
       project = pulumi.Input.asOptionalInput<String>(project),
       siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'project': ?project,
      'siteId': siteId,
    };
  }

  factory GetChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelArgs(
      channelId: map['channelId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      siteId: map['siteId'] as String,
    );
  }
}
