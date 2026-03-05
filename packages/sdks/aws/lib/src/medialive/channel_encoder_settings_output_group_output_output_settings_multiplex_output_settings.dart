// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_multiplex_output_settings_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings {
  /// Destination is a multiplex. See Destination for more details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination> destination;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings].
  /// [destination] Destination is a multiplex. See Destination for more details.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettings(
      destination: pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
    );
  }
}

