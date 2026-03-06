// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_automatic_input_failover_settings_failover_condition.dart';

class ChannelInputAttachmentAutomaticInputFailoverSettings {
  /// This clear time defines the requirement a recovered input must meet to be considered healthy. The input must have no failover conditions for this length of time. Enter a time in milliseconds. This value is particularly important if the input\_preference for the failover pair is set to PRIMARY\_INPUT\_PREFERRED, because after this time, MediaLive will switch back to the primary input.
  final pulumi.Input<int>? errorClearTimeMsec;
  /// A list of failover conditions. If any of these conditions occur, MediaLive will perform a failover to the other input. See Failover Condition Block for more details.
  final pulumi.Input<List<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition>>? failoverConditions;
  /// Input preference when deciding which input to make active when a previously failed input has recovered.
  final pulumi.Input<String>? inputPreference;
  /// The input ID of the secondary input in the automatic input failover pair.
  final pulumi.Input<String> secondaryInputId;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettings].
  /// [errorClearTimeMsec] This clear time defines the requirement a recovered input must meet to be considered healthy. The input must have no failover conditions for this length of time. Enter a time in milliseconds. This value is particularly important if the input\_preference for the failover pair is set to PRIMARY\_INPUT\_PREFERRED, because after this time, MediaLive will switch back to the primary input.
  /// [failoverConditions] A list of failover conditions. If any of these conditions occur, MediaLive will perform a failover to the other input. See Failover Condition Block for more details.
  /// [inputPreference] Input preference when deciding which input to make active when a previously failed input has recovered.
  /// [secondaryInputId] The input ID of the secondary input in the automatic input failover pair.
  const ChannelInputAttachmentAutomaticInputFailoverSettings({
    this.errorClearTimeMsec,
    this.failoverConditions,
    this.inputPreference,
    required this.secondaryInputId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorClearTimeMsec': ?errorClearTimeMsec,
      'failoverConditions': ?pulumi.Input.mapOptionalInputValue<List<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition>, List<Map<String, dynamic>>>(failoverConditions, (value) => pulumi.Input.encodeList<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputPreference': ?inputPreference,
      'secondaryInputId': secondaryInputId,
    };
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentAutomaticInputFailoverSettings(
      errorClearTimeMsec: (() { final guardedValue = map['errorClearTimeMsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      failoverConditions: (() { final guardedValue = map['failoverConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition>(guardedValue, (value) => ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputPreference: (() { final guardedValue = map['inputPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryInputId: pulumi.Input.fromValue(map['secondaryInputId'] as String),
    );
  }
}

