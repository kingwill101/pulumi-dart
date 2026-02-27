// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getChannel.
class GetChannelArgs2 {
  final Input<String> channelId;
  final Input<String>? project;
  final Input<String> siteId;

  GetChannelArgs2({
    required this.channelId,
    this.project,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelId'] = channelId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['siteId'] = siteId;
    return map;
  }

  factory GetChannelArgs2.fromMap(Map<String, dynamic> map) {
    return GetChannelArgs2(
      channelId: Input.asInput<String>(map['channelId']),
      project: Input.asOptionalInput<String>(map['project']),
      siteId: Input.asInput<String>(map['siteId']),
    );
  }
}
