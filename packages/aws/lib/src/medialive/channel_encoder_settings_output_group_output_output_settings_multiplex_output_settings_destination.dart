// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination {
  /// Reference ID for the destination.
  final String destinationRefId;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination].
  /// [destinationRefId] Reference ID for the destination.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'destinationRefId': destinationRefId};
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination(
      destinationRefId: map['destinationRefId'] as String,
    );
  }
}
