// ignore_for_file: unused_element, unnecessary_cast

class ChannelDestinationMultiplexSettings {
  /// The ID of the Multiplex that the encoder is providing output to.
  final String multiplexId;

  /// The program name of the Multiplex program that the encoder is providing output to.
  final String programName;

  /// Creates a new [ChannelDestinationMultiplexSettings].
  /// [multiplexId] The ID of the Multiplex that the encoder is providing output to.
  /// [programName] The program name of the Multiplex program that the encoder is providing output to.
  ChannelDestinationMultiplexSettings({
    required this.multiplexId,
    required this.programName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['multiplexId'] = multiplexId;
    map['programName'] = programName;
    return map;
  }

  factory ChannelDestinationMultiplexSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelDestinationMultiplexSettings(
      multiplexId: map['multiplexId'] as String,
      programName: map['programName'] as String,
    );
  }
}
