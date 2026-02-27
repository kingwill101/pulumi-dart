// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getStreamKey.
class GetStreamKeyArgs {
  /// ARN of the Channel.
  final pulumi.Input<String> channelArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  GetStreamKeyArgs({
    required this.channelArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelArn'] = channelArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetStreamKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamKeyArgs(
      channelArn: pulumi.Input.asInput<String>(map['channelArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
