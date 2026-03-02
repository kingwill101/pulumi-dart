// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EngagementFabric channel description
class ChannelTypeDescriptionResponse {
  /// Text description for the channel
  final pulumi.Input<String>? channelDescription;
  /// All the available functions for the channel
  final pulumi.Input<List<String>>? channelFunctions;
  /// Channel type
  final pulumi.Input<String>? channelType;

  /// Creates a new [ChannelTypeDescriptionResponse].
  /// [channelDescription] Text description for the channel
  /// [channelFunctions] All the available functions for the channel
  /// [channelType] Channel type
  ChannelTypeDescriptionResponse({
    this.channelDescription,
    this.channelFunctions,
    this.channelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelDescription': ?channelDescription,
      'channelFunctions': ?channelFunctions,
      'channelType': ?channelType,
    };
  }

  factory ChannelTypeDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return ChannelTypeDescriptionResponse(
      channelDescription: map['channelDescription'] == null ? null : (map['channelDescription'] as String).input(),
      channelFunctions: map['channelFunctions'] == null ? null : ((map['channelFunctions'] as List).cast<String>()).input(),
      channelType: map['channelType'] == null ? null : (map['channelType'] as String).input(),
    );
  }
}

