// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getChannelConnection.
class GetChannelConnectionArgs {
  final pulumi.Input<String> channelConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetChannelConnectionArgs({
    required this.channelConnectionId,
    required this.location,
    this.project,
  });

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
      channelConnectionId:
          pulumi.Input.asInput<String>(map['channelConnectionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
