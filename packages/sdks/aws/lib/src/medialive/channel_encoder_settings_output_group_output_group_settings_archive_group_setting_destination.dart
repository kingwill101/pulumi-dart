// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination {
  /// Reference ID for the destination.
  final pulumi.Input<String> destinationRefId;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination].
  /// [destinationRefId] Reference ID for the destination.
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationRefId': destinationRefId,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestination(
      destinationRefId: pulumi.Input.fromValue(map['destinationRefId'] as String),
    );
  }
}
