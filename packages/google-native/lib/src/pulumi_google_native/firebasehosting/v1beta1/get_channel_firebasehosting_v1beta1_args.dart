// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getChannel.
class GetChannelFirebasehostingV1beta1Args {
  final pulumi.Input<String> channelId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;

  GetChannelFirebasehostingV1beta1Args({
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

  factory GetChannelFirebasehostingV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetChannelFirebasehostingV1beta1Args(
      channelId: pulumi.Input.asInput<String>(map['channelId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
    );
  }
}
