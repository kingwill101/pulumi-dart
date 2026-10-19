// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelDestinationMultiplexSettings {
  /// ID of the Multiplex that the encoder is providing output to.
  final pulumi.Input<String> multiplexId;
  /// Program name of the Multiplex program that the encoder is providing output to.
  final pulumi.Input<String> programName;

  /// Creates a new [ChannelDestinationMultiplexSettings].
  /// [multiplexId] ID of the Multiplex that the encoder is providing output to.
  /// [programName] Program name of the Multiplex program that the encoder is providing output to.
  const ChannelDestinationMultiplexSettings({
    required this.multiplexId,
    required this.programName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multiplexId': multiplexId,
      'programName': programName,
    };
  }

  factory ChannelDestinationMultiplexSettings.fromMap(Map<String, dynamic> map) {
    return ChannelDestinationMultiplexSettings(
      multiplexId: pulumi.Input.fromValue(map['multiplexId'] as String),
      programName: pulumi.Input.fromValue(map['programName'] as String),
    );
  }
}
