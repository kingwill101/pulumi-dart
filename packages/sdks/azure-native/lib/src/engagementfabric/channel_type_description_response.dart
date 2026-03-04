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
      channelDescription: (() {
        final guardedValue = map['channelDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      channelFunctions: (() {
        final guardedValue = map['channelFunctions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      channelType: (() {
        final guardedValue = map['channelType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
