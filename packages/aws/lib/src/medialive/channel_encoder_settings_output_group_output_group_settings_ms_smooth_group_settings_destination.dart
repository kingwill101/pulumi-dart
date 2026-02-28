// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination {
  /// Reference ID for the destination.
  final String destinationRefId;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination].
  /// [destinationRefId] Reference ID for the destination.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationRefId'] = destinationRefId;
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsMsSmoothGroupSettingsDestination(
      destinationRefId: map['destinationRefId'] as String,
    );
  }
}
