// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination {
  /// Reference ID for the destination.
  final pulumi.Input<String> destinationRefId;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination].
  /// [destinationRefId] Reference ID for the destination.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationRefId': destinationRefId,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination(
      destinationRefId: pulumi.Input.fromValue(map['destinationRefId'] as String),
    );
  }
}
