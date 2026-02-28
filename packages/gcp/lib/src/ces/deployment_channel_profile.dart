// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_channel_profile_persona_property.dart';
import 'deployment_channel_profile_web_widget_config.dart';

class DeploymentChannelProfile {
  /// The type of the channel profile.
  /// Possible values:
  /// UNKNOWN
  /// WEB_UI
  /// API
  /// TWILIO
  /// GOOGLE_TELEPHONY_PLATFORM
  /// CONTACT_CENTER_AS_A_SERVICE
  final String? channelType;

  /// Whether to disable user barge-in control in the conversation.
  /// - **true**: User interruptions are disabled while the agent is speaking.
  /// - **false**: The agent retains automatic control over when the user can
  /// interrupt.
  final bool? disableBargeInControl;

  /// Whether to disable DTMF (dual-tone multi-frequency).
  final bool? disableDtmf;

  /// Represents the persona property of a channel.
  /// Structure is documented below.
  final DeploymentChannelProfilePersonaProperty? personaProperty;

  /// The unique identifier of the channel profile.
  final String? profileId;

  /// Message for configuration for the web widget.
  /// Structure is documented below.
  final DeploymentChannelProfileWebWidgetConfig? webWidgetConfig;

  /// Creates a new [DeploymentChannelProfile].
  /// [channelType] The type of the channel profile.
  /// [disableBargeInControl] Whether to disable user barge-in control in the conversation.
  /// [disableDtmf] Whether to disable DTMF (dual-tone multi-frequency).
  /// [personaProperty] Represents the persona property of a channel.
  /// [profileId] The unique identifier of the channel profile.
  /// [webWidgetConfig] Message for configuration for the web widget.
  DeploymentChannelProfile({
    this.channelType,
    this.disableBargeInControl,
    this.disableDtmf,
    this.personaProperty,
    this.profileId,
    this.webWidgetConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final channelTypeValue = channelType;
    if (channelTypeValue != null) {
      map['channelType'] = channelTypeValue;
    }
    final disableBargeInControlValue = disableBargeInControl;
    if (disableBargeInControlValue != null) {
      map['disableBargeInControl'] = disableBargeInControlValue;
    }
    final disableDtmfValue = disableDtmf;
    if (disableDtmfValue != null) {
      map['disableDtmf'] = disableDtmfValue;
    }
    final personaPropertyValue = personaProperty;
    if (personaPropertyValue != null) {
      map['personaProperty'] = personaPropertyValue.toMap();
    }
    final profileIdValue = profileId;
    if (profileIdValue != null) {
      map['profileId'] = profileIdValue;
    }
    final webWidgetConfigValue = webWidgetConfig;
    if (webWidgetConfigValue != null) {
      map['webWidgetConfig'] = webWidgetConfigValue.toMap();
    }
    return map;
  }

  factory DeploymentChannelProfile.fromMap(Map<String, dynamic> map) {
    return DeploymentChannelProfile(
      channelType:
          map['channelType'] == null ? null : map['channelType'] as String,
      disableBargeInControl: map['disableBargeInControl'] == null
          ? null
          : map['disableBargeInControl'] as bool,
      disableDtmf:
          map['disableDtmf'] == null ? null : map['disableDtmf'] as bool,
      personaProperty: map['personaProperty'] == null
          ? null
          : DeploymentChannelProfilePersonaProperty.fromMap(
              (map['personaProperty'] as Map).cast<String, dynamic>()),
      profileId: map['profileId'] == null ? null : map['profileId'] as String,
      webWidgetConfig: map['webWidgetConfig'] == null
          ? null
          : DeploymentChannelProfileWebWidgetConfig.fromMap(
              (map['webWidgetConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
