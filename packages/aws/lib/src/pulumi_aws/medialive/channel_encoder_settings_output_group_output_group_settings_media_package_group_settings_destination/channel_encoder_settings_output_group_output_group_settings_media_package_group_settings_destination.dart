// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettingsDestination {
  /// Reference ID for the destination.
  final String destinationRefId;

  ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettingsDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationRefId'] = destinationRefId;
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettingsDestination.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsMediaPackageGroupSettingsDestination(
      destinationRefId: map['destinationRefId'] as String,
    );
  }
}
