// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Microsoft Teams channel.
class SkypeChannelProperties {
  /// Calling web hook for Skype channel
  final pulumi.Input<String>? callingWebHook;
  /// Enable calling for Skype channel
  final pulumi.Input<bool>? enableCalling;
  /// Enable groups for Skype channel
  final pulumi.Input<bool>? enableGroups;
  /// Enable media cards for Skype channel
  final pulumi.Input<bool>? enableMediaCards;
  /// Enable messaging for Skype channel
  final pulumi.Input<bool>? enableMessaging;
  /// Enable screen sharing for Skype channel
  final pulumi.Input<bool>? enableScreenSharing;
  /// Enable video for Skype channel
  final pulumi.Input<bool>? enableVideo;
  /// Group mode for Skype channel
  final pulumi.Input<String>? groupsMode;
  /// Incoming call route for Skype channel
  final pulumi.Input<String>? incomingCallRoute;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;

  /// Creates a new [SkypeChannelProperties].
  /// [callingWebHook] Calling web hook for Skype channel
  /// [enableCalling] Enable calling for Skype channel
  /// [enableGroups] Enable groups for Skype channel
  /// [enableMediaCards] Enable media cards for Skype channel
  /// [enableMessaging] Enable messaging for Skype channel
  /// [enableScreenSharing] Enable screen sharing for Skype channel
  /// [enableVideo] Enable video for Skype channel
  /// [groupsMode] Group mode for Skype channel
  /// [incomingCallRoute] Incoming call route for Skype channel
  /// [isEnabled] Whether this channel is enabled for the bot
  SkypeChannelProperties({
    this.callingWebHook,
    this.enableCalling,
    this.enableGroups,
    this.enableMediaCards,
    this.enableMessaging,
    this.enableScreenSharing,
    this.enableVideo,
    this.groupsMode,
    this.incomingCallRoute,
    required this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callingWebHook': ?callingWebHook,
      'enableCalling': ?enableCalling,
      'enableGroups': ?enableGroups,
      'enableMediaCards': ?enableMediaCards,
      'enableMessaging': ?enableMessaging,
      'enableScreenSharing': ?enableScreenSharing,
      'enableVideo': ?enableVideo,
      'groupsMode': ?groupsMode,
      'incomingCallRoute': ?incomingCallRoute,
      'isEnabled': isEnabled,
    };
  }

  factory SkypeChannelProperties.fromMap(Map<String, dynamic> map) {
    return SkypeChannelProperties(
      callingWebHook: map['callingWebHook'] == null ? null : (map['callingWebHook'] as String).input(),
      enableCalling: map['enableCalling'] == null ? null : (map['enableCalling'] as bool).input(),
      enableGroups: map['enableGroups'] == null ? null : (map['enableGroups'] as bool).input(),
      enableMediaCards: map['enableMediaCards'] == null ? null : (map['enableMediaCards'] as bool).input(),
      enableMessaging: map['enableMessaging'] == null ? null : (map['enableMessaging'] as bool).input(),
      enableScreenSharing: map['enableScreenSharing'] == null ? null : (map['enableScreenSharing'] as bool).input(),
      enableVideo: map['enableVideo'] == null ? null : (map['enableVideo'] as bool).input(),
      groupsMode: map['groupsMode'] == null ? null : (map['groupsMode'] as String).input(),
      incomingCallRoute: map['incomingCallRoute'] == null ? null : (map['incomingCallRoute'] as String).input(),
      isEnabled: (map['isEnabled'] as bool).input(),
    );
  }
}

