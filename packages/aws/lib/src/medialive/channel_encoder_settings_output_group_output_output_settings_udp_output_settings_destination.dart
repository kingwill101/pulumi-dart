// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination {
  /// Reference ID for the destination.
  final String destinationRefId;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination].
  /// [destinationRefId] Reference ID for the destination.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationRefId'] = destinationRefId;
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination(
      destinationRefId: map['destinationRefId'] as String,
    );
  }
}
