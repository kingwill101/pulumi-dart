// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination {
  /// Reference ID for the destination.
  final String destinationRefId;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination].
  /// [destinationRefId] Reference ID for the destination.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationRefId'] = destinationRefId;
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination(
      destinationRefId: map['destinationRefId'] as String,
    );
  }
}
