// ignore_for_file: unused_element, unnecessary_cast

import 'channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings.dart';

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition {
  /// Failover condition type-specific settings. See Failover Condition Settings for more details.
  final ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings?
  failoverConditionSettings;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition].
  /// [failoverConditionSettings] Failover condition type-specific settings. See Failover Condition Settings for more details.
  ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition({
    this.failoverConditionSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverConditionSettings': ?failoverConditionSettings == null
          ? null
          : failoverConditionSettings!.toMap(),
    };
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition(
      failoverConditionSettings: map['failoverConditionSettings'] == null
          ? null
          : ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings.fromMap(
              (map['failoverConditionSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
