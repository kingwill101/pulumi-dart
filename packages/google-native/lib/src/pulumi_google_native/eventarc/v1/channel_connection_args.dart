// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ChannelConnection.
class ChannelConnectionArgs {
  /// Input only. Activation token for the channel. The token will be used during the creation of ChannelConnection to bind the channel with the provider project. This field will not be stored in the provider resource.
  final pulumi.Input<String>? activationToken;

  /// The name of the connected subscriber Channel. This is a weak reference to avoid cross project and cross accounts references. This must be in `projects/{project}/location/{location}/channels/{channel_id}` format.
  final pulumi.Input<String> channel;

  /// Required. The user-provided ID to be assigned to the channel connection.
  final pulumi.Input<String> channelConnectionId;
  final pulumi.Input<String>? location;

  /// The name of the connection.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  ChannelConnectionArgs({
    this.activationToken,
    required this.channel,
    required this.channelConnectionId,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activationTokenValue = activationToken;
    if (activationTokenValue != null) {
      map['activationToken'] = activationTokenValue;
    }
    map['channel'] = channel;
    map['channelConnectionId'] = channelConnectionId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ChannelConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ChannelConnectionArgs(
      activationToken:
          pulumi.Input.asOptionalInput<String>(map['activationToken']),
      channel: pulumi.Input.asInput<String>(map['channel']),
      channelConnectionId:
          pulumi.Input.asInput<String>(map['channelConnectionId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
