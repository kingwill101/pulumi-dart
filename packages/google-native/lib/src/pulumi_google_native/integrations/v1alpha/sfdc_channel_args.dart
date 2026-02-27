// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SfdcChannel.
class SfdcChannelArgs {
  /// The Channel topic defined by salesforce once an channel is opened
  final pulumi.Input<String>? channelTopic;

  /// The description for this channel
  final pulumi.Input<String>? description;

  /// Client level unique name/alias to easily reference a channel.
  final pulumi.Input<String>? displayName;

  /// Indicated if a channel has any active integrations referencing it. Set to false when the channel is created, and set to true if there is any integration published with the channel configured in it.
  final pulumi.Input<bool>? isActive;

  /// Last sfdc messsage replay id for channel
  final pulumi.Input<String>? lastReplayId;
  final pulumi.Input<String>? location;

  /// Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sfdcInstanceId;

  SfdcChannelArgs({
    this.channelTopic,
    this.description,
    this.displayName,
    this.isActive,
    this.lastReplayId,
    this.location,
    this.name,
    required this.productId,
    this.project,
    required this.sfdcInstanceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final channelTopicValue = channelTopic;
    if (channelTopicValue != null) {
      map['channelTopic'] = channelTopicValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final isActiveValue = isActive;
    if (isActiveValue != null) {
      map['isActive'] = isActiveValue;
    }
    final lastReplayIdValue = lastReplayId;
    if (lastReplayIdValue != null) {
      map['lastReplayId'] = lastReplayIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sfdcInstanceId'] = sfdcInstanceId;
    return map;
  }

  factory SfdcChannelArgs.fromMap(Map<String, dynamic> map) {
    return SfdcChannelArgs(
      channelTopic: pulumi.Input.asOptionalInput<String>(map['channelTopic']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      isActive: pulumi.Input.asOptionalInput<bool>(map['isActive']),
      lastReplayId: pulumi.Input.asOptionalInput<String>(map['lastReplayId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sfdcInstanceId: pulumi.Input.asInput<String>(map['sfdcInstanceId']),
    );
  }
}
