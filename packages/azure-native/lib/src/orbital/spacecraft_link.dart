// ignore_for_file: unused_element, unnecessary_cast


/// List of authorized spacecraft links per ground station and the expiration date of the authorization.
class SpacecraftLink {
  /// Bandwidth in MHz.
  final double bandwidthMHz;
  /// Center Frequency in MHz.
  final double centerFrequencyMHz;
  /// Direction (Uplink or Downlink).
  final String direction;
  /// Link name.
  final String name;
  /// Polarization. e.g. (RHCP, LHCP).
  final String polarization;

  /// Creates a new [SpacecraftLink].
  /// [bandwidthMHz] Bandwidth in MHz.
  /// [centerFrequencyMHz] Center Frequency in MHz.
  /// [direction] Direction (Uplink or Downlink).
  /// [name] Link name.
  /// [polarization] Polarization. e.g. (RHCP, LHCP).
  SpacecraftLink({
    required this.bandwidthMHz,
    required this.centerFrequencyMHz,
    required this.direction,
    required this.name,
    required this.polarization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthMHz': bandwidthMHz,
      'centerFrequencyMHz': centerFrequencyMHz,
      'direction': direction,
      'name': name,
      'polarization': polarization,
    };
  }

  factory SpacecraftLink.fromMap(Map<String, dynamic> map) {
    return SpacecraftLink(
      bandwidthMHz: map['bandwidthMHz'] as double,
      centerFrequencyMHz: map['centerFrequencyMHz'] as double,
      direction: map['direction'] as String,
      name: map['name'] as String,
      polarization: map['polarization'] as String,
    );
  }
}

