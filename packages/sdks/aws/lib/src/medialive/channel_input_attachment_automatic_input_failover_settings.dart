// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_automatic_input_failover_settings_failover_condition.dart';

class ChannelInputAttachmentAutomaticInputFailoverSettings {
  /// Amount of time, in milliseconds, that a recovered input must have no failover conditions before it is considered healthy. This value is particularly important when `inputPreference` is set to `PRIMARY_INPUT_PREFERRED`, because after this time, MediaLive switches back to the primary input.
  final pulumi.Input<int?>? errorClearTimeMsec;
  /// Failover conditions. If any of these conditions occur, MediaLive fails over to the other input. See `failoverCondition` Block for details.
  final pulumi.Input<List<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition>?>? failoverConditions;
  /// Input preference when deciding which input to make active when a previously failed input has recovered.
  final pulumi.Input<String?>? inputPreference;
  /// Input ID of the secondary input in the automatic input failover pair.
  final pulumi.Input<String> secondaryInputId;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettings].
  /// [errorClearTimeMsec] Amount of time, in milliseconds, that a recovered input must have no failover conditions before it is considered healthy. This value is particularly important when `inputPreference` is set to `PRIMARY_INPUT_PREFERRED`, because after this time, MediaLive switches back to the primary input.
  /// [failoverConditions] Failover conditions. If any of these conditions occur, MediaLive fails over to the other input. See `failoverCondition` Block for details.
  /// [inputPreference] Input preference when deciding which input to make active when a previously failed input has recovered.
  /// [secondaryInputId] Input ID of the secondary input in the automatic input failover pair.
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
      errorClearTimeMsec: (() { final guardedValue = map['errorClearTimeMsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      failoverConditions: (() { final guardedValue = map['failoverConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition>(guardedValue, (value) => ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputPreference: (() { final guardedValue = map['inputPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryInputId: pulumi.Input.fromValue(map['secondaryInputId'] as String),
    );
  }
}
