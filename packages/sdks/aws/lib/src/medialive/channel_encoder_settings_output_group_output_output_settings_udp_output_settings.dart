// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_container_settings.dart';
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_destination.dart';
import 'channel_encoder_settings_output_group_output_output_settings_udp_output_settings_fec_output_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings {
  /// UDP output buffering in milliseconds.
  final pulumi.Input<int>? bufferMsec;
  /// UDP container settings. See Container Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings> containerSettings;
  /// Destination address and port number for RTP or UDP packets. See Destination for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination> destination;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings>? fecOutputSettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings].
  /// [bufferMsec] UDP output buffering in milliseconds.
  /// [containerSettings] UDP container settings. See Container Settings for more details.
  /// [destination] Destination address and port number for RTP or UDP packets. See Destination for more details.
  /// [fecOutputSettings] Optional.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings({
    this.bufferMsec,
    required this.containerSettings,
    required this.destination,
    this.fecOutputSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferMsec': ?bufferMsec,
      'containerSettings': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings, Map<String, dynamic>>(containerSettings, (value) => value.toMap()),
      'destination': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'fecOutputSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings, Map<String, dynamic>>(fecOutputSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettings(
      bufferMsec: (() { final guardedValue = map['bufferMsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      containerSettings: pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsContainerSettings.fromMap((map['containerSettings']! as Map).cast<String, dynamic>())),
      destination: pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      fecOutputSettings: (() { final guardedValue = map['fecOutputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
