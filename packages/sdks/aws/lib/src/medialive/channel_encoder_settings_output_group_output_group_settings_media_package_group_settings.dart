// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_group_settings_media_package_group_settings_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings {
  /// A director and base filename where archive files should be written. See Destination for more details.
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettingsDestination destination;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings].
  /// [destination] A director and base filename where archive files should be written. See Destination for more details.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination.toMap(),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings(
      destination: ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettingsDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
    );
  }
}

