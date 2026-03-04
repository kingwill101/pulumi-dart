// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_automatic_input_failover_settings_failover_condition_failover_condition_settings.dart';

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition {
  /// Failover condition type-specific settings. See Failover Condition Settings for more details.
  final pulumi.Input<
    ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings
  >?
  failoverConditionSettings;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition].
  /// [failoverConditionSettings] Failover condition type-specific settings. See Failover Condition Settings for more details.
  ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition({
    this.failoverConditionSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverConditionSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings,
            Map<String, dynamic>
          >(failoverConditionSettings, (value) => value.toMap()),
    };
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverCondition(
      failoverConditionSettings: (() {
        final guardedValue = map['failoverConditionSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
