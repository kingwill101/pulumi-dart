// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_app_default_channel_profile_persona_property/app_version_snapshot_app_default_channel_profile_persona_property.dart';
import '../app_version_snapshot_app_default_channel_profile_web_widget_config/app_version_snapshot_app_default_channel_profile_web_widget_config.dart';

class AppVersionSnapshotAppDefaultChannelProfile {
  /// (Output)
  /// The type of the channel profile.
  /// Possible values:
  /// UNKNOWN
  /// WEB_UI
  /// API
  /// TWILIO
  /// GOOGLE_TELEPHONY_PLATFORM
  /// CONTACT_CENTER_AS_A_SERVICE
  final String? channelType;

  /// (Output)
  /// Whether to disable user barge-in in the conversation.
  /// - true: User interruptions are disabled while the agent is speaking.
  /// - false: The agent retains automatic control over when the user can interrupt.
  final bool? disableBargeInControl;

  /// (Output)
  /// Whether to disable DTMF (dual-tone multi-frequency).
  final bool? disableDtmf;

  /// (Output)
  /// Represents the persona property of a channel.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppDefaultChannelProfilePersonaProperty>?
      personaProperties;

  /// (Output)
  /// The unique identifier of the channel profile.
  final String? profileId;

  /// (Output)
  /// Message for configuration for the web widget.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppDefaultChannelProfileWebWidgetConfig>?
      webWidgetConfigs;

  AppVersionSnapshotAppDefaultChannelProfile({
    this.channelType,
    this.disableBargeInControl,
    this.disableDtmf,
    this.personaProperties,
    this.profileId,
    this.webWidgetConfigs,
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
    final personaPropertiesValue = personaProperties;
    if (personaPropertiesValue != null) {
      map['personaProperties'] = Input.encodeList<
              AppVersionSnapshotAppDefaultChannelProfilePersonaProperty,
              Map<String, dynamic>>(
          personaPropertiesValue, (value) => value.toMap());
    }
    final profileIdValue = profileId;
    if (profileIdValue != null) {
      map['profileId'] = profileIdValue;
    }
    final webWidgetConfigsValue = webWidgetConfigs;
    if (webWidgetConfigsValue != null) {
      map['webWidgetConfigs'] = Input.encodeList<
              AppVersionSnapshotAppDefaultChannelProfileWebWidgetConfig,
              Map<String, dynamic>>(
          webWidgetConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotAppDefaultChannelProfile.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppDefaultChannelProfile(
      channelType:
          map['channelType'] == null ? null : map['channelType'] as String,
      disableBargeInControl: map['disableBargeInControl'] == null
          ? null
          : map['disableBargeInControl'] as bool,
      disableDtmf:
          map['disableDtmf'] == null ? null : map['disableDtmf'] as bool,
      personaProperties: map['personaProperties'] == null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotAppDefaultChannelProfilePersonaProperty>(
              map['personaProperties'],
              (value) =>
                  AppVersionSnapshotAppDefaultChannelProfilePersonaProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
      profileId: map['profileId'] == null ? null : map['profileId'] as String,
      webWidgetConfigs: map['webWidgetConfigs'] == null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotAppDefaultChannelProfileWebWidgetConfig>(
              map['webWidgetConfigs'],
              (value) =>
                  AppVersionSnapshotAppDefaultChannelProfileWebWidgetConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
