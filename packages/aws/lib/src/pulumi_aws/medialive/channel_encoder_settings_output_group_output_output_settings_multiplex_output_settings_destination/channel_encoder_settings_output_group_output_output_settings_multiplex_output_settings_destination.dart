// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination {
  /// Reference ID for the destination.
  final String destinationRefId;

  ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationRefId'] = destinationRefId;
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsMultiplexOutputSettingsDestination(
      destinationRefId: map['destinationRefId'] as String,
    );
  }
}
