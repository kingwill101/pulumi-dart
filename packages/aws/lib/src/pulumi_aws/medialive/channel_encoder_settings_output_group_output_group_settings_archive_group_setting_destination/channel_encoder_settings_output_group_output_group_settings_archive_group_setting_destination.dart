// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination {
  /// Reference ID for the destination.
  final String destinationRefId;

  ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationRefId'] = destinationRefId;
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination(
      destinationRefId: map['destinationRefId'] as String,
    );
  }
}
