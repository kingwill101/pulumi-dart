// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination {
  /// Reference ID for the destination.
  final String destinationRefId;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination].
  /// [destinationRefId] Reference ID for the destination.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'destinationRefId': destinationRefId};
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination(
      destinationRefId: map['destinationRefId'] as String,
    );
  }
}
