// ignore_for_file: unused_element, unnecessary_cast

import '../channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings/channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings.dart';

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition {
  /// Failover condition type-specific settings. See Failover Condition Settings for more details.
  final ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings?
      failoverConditionSettings;

  ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition({
    this.failoverConditionSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final failoverConditionSettingsValue = failoverConditionSettings;
    if (failoverConditionSettingsValue != null) {
      map['failoverConditionSettings'] = failoverConditionSettingsValue.toMap();
    }
    return map;
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition(
      failoverConditionSettings: map['failoverConditionSettings'] == null
          ? null
          : ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings
              .fromMap((map['failoverConditionSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
