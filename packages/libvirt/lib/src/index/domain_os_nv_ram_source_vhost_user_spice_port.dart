// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceVhostUserSpicePort {
  /// Sets the channel attribute for the SPICE port in the random number generator backend.
  final String channel;

  /// Creates a new [DomainOsNvRamSourceVhostUserSpicePort].
  /// [channel] Sets the channel attribute for the SPICE port in the random number generator backend.
  DomainOsNvRamSourceVhostUserSpicePort({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory DomainOsNvRamSourceVhostUserSpicePort.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUserSpicePort(
      channel: map['channel'] as String,
    );
  }
}

