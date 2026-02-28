// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSfdcChannel.
class GetSfdcChannelResult {
  /// The Channel topic defined by salesforce once an channel is opened
  final String channelTopic;

  /// Time when the channel is created
  final String createTime;

  /// Time when the channel was deleted. Empty if not deleted.
  final String deleteTime;

  /// The description for this channel
  final String description;

  /// Client level unique name/alias to easily reference a channel.
  final String displayName;

  /// Indicated if a channel has any active integrations referencing it. Set to false when the channel is created, and set to true if there is any integration published with the channel configured in it.
  final bool isActive;

  /// Last sfdc messsage replay id for channel
  final String lastReplayId;

  /// Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  final String name;

  /// Time when the channel was last updated
  final String updateTime;

  /// Creates a new [GetSfdcChannelResult].
  /// [channelTopic] The Channel topic defined by salesforce once an channel is opened
  /// [createTime] Time when the channel is created
  /// [deleteTime] Time when the channel was deleted. Empty if not deleted.
  /// [description] The description for this channel
  /// [displayName] Client level unique name/alias to easily reference a channel.
  /// [isActive] Indicated if a channel has any active integrations referencing it. Set to false when the channel is created, and set to true if there is any integration published with the channel configured in it.
  /// [lastReplayId] Last sfdc messsage replay id for channel
  /// [name] Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  /// [updateTime] Time when the channel was last updated
  GetSfdcChannelResult({
    required this.channelTopic,
    required this.createTime,
    required this.deleteTime,
    required this.description,
    required this.displayName,
    required this.isActive,
    required this.lastReplayId,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelTopic'] = channelTopic;
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['isActive'] = isActive;
    map['lastReplayId'] = lastReplayId;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetSfdcChannelResult.fromMap(Map<String, dynamic> map) {
    return GetSfdcChannelResult(
      channelTopic: map['channelTopic'] as String,
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      isActive: map['isActive'] as bool,
      lastReplayId: map['lastReplayId'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
