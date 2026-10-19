// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_media_package_group_settings_destination.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings {
  /// MediaPackage channel destination. See `destination` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettingsDestination> destination;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings].
  /// [destination] MediaPackage channel destination. See `destination` Block for details.
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettingsDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettings(
      destination: pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettingsDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
    );
  }
}
