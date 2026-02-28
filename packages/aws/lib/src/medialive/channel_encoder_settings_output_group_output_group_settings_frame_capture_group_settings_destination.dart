// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsDestination {
  /// Reference ID for the destination.
  final String destinationRefId;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsDestination].
  /// [destinationRefId] Reference ID for the destination.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationRefId'] = destinationRefId;
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsDestination.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsDestination(
      destinationRefId: map['destinationRefId'] as String,
    );
  }
}
