// ignore_for_file: unused_element, unnecessary_cast


/// The properties describing private cloud availability zone distribution
class AvailabilityPropertiesResponse {
  /// The secondary availability zone for the private cloud
  final int? secondaryZone;
  /// The availability strategy for the private cloud
  final String? strategy;
  /// The primary availability zone for the private cloud
  final int? zone;

  /// Creates a new [AvailabilityPropertiesResponse].
  /// [secondaryZone] The secondary availability zone for the private cloud
  /// [strategy] The availability strategy for the private cloud
  /// [zone] The primary availability zone for the private cloud
  AvailabilityPropertiesResponse({
    this.secondaryZone,
    this.strategy,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secondaryZone': ?secondaryZone,
      'strategy': ?strategy,
      'zone': ?zone,
    };
  }

  factory AvailabilityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AvailabilityPropertiesResponse(
      secondaryZone: map['secondaryZone'] == null ? null : map['secondaryZone'] as int,
      strategy: map['strategy'] == null ? null : map['strategy'] as String,
      zone: map['zone'] == null ? null : map['zone'] as int,
    );
  }
}

