// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination {
  /// Reference ID for the destination.
  final pulumi.Input<String> destinationRefId;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination].
  /// [destinationRefId] Reference ID for the destination.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination({
    required this.destinationRefId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationRefId': destinationRefId,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsDestination(
      destinationRefId: pulumi.Input.fromValue(map['destinationRefId'] as String),
    );
  }
}
