// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../channel_input_attachment_automatic_input_failover_settings_failover_condition/channel_input_attachment_automatic_input_failover_settings_failover_condition.dart';

class ChannelInputAttachmentAutomaticInputFailoverSettings {
  /// This clear time defines the requirement a recovered input must meet to be considered healthy. The input must have no failover conditions for this length of time. Enter a time in milliseconds. This value is particularly important if the input\_preference for the failover pair is set to PRIMARY\_INPUT\_PREFERRED, because after this time, MediaLive will switch back to the primary input.
  final int? errorClearTimeMsec;

  /// A list of failover conditions. If any of these conditions occur, MediaLive will perform a failover to the other input. See Failover Condition Block for more details.
  final List<
          ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition>?
      failoverConditions;

  /// Input preference when deciding which input to make active when a previously failed input has recovered.
  final String? inputPreference;

  /// The input ID of the secondary input in the automatic input failover pair.
  final String secondaryInputId;

  ChannelInputAttachmentAutomaticInputFailoverSettings({
    this.errorClearTimeMsec,
    this.failoverConditions,
    this.inputPreference,
    required this.secondaryInputId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorClearTimeMsecValue = errorClearTimeMsec;
    if (errorClearTimeMsecValue != null) {
      map['errorClearTimeMsec'] = errorClearTimeMsecValue;
    }
    final failoverConditionsValue = failoverConditions;
    if (failoverConditionsValue != null) {
      map['failoverConditions'] = pulumi.Input.encodeList<
          ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition,
          Map<String,
              dynamic>>(failoverConditionsValue, (value) => value.toMap());
    }
    final inputPreferenceValue = inputPreference;
    if (inputPreferenceValue != null) {
      map['inputPreference'] = inputPreferenceValue;
    }
    map['secondaryInputId'] = secondaryInputId;
    return map;
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentAutomaticInputFailoverSettings(
      errorClearTimeMsec: map['errorClearTimeMsec'] == null
          ? null
          : map['errorClearTimeMsec'] as int,
      failoverConditions: map['failoverConditions'] == null
          ? null
          : pulumi.Input.decodeList<
                  ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition>(
              map['failoverConditions'],
              (value) =>
                  ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition
                      .fromMap((value as Map).cast<String, dynamic>())),
      inputPreference: map['inputPreference'] == null
          ? null
          : map['inputPreference'] as String,
      secondaryInputId: map['secondaryInputId'] as String,
    );
  }
}
