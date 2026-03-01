// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_output_settings_multiplex_output_settings_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings {
  /// Destination is a multiplex. See Destination for more details.
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination
  destination;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings].
  /// [destination] Destination is a multiplex. See Destination for more details.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'destination': destination.toMap()};
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings(
      destination:
          ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination.fromMap(
            (map['destination'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
