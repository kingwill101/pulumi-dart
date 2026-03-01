// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterAvailableResourcesResource {
  /// (Available since v1.225.0) The list of available zones.
  final List<String> availableZones;
  /// The list of primary zones.
  final List<String> masterZones;
  /// The list of secondary zones.
  final List<String> slaveZones;
  /// Specifies whether to query only the zones in which the multicast feature is supported.
  final bool supportMulticast;

  /// Creates a new [GetTransitRouterAvailableResourcesResource].
  /// [availableZones] (Available since v1.225.0) The list of available zones.
  /// [masterZones] The list of primary zones.
  /// [slaveZones] The list of secondary zones.
  /// [supportMulticast] Specifies whether to query only the zones in which the multicast feature is supported.
  GetTransitRouterAvailableResourcesResource({
    required this.availableZones,
    required this.masterZones,
    required this.slaveZones,
    required this.supportMulticast,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableZones': availableZones,
      'masterZones': masterZones,
      'slaveZones': slaveZones,
      'supportMulticast': supportMulticast,
    };
  }

  factory GetTransitRouterAvailableResourcesResource.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterAvailableResourcesResource(
      availableZones: (map['availableZones'] as List).cast<String>(),
      masterZones: (map['masterZones'] as List).cast<String>(),
      slaveZones: (map['slaveZones'] as List).cast<String>(),
      supportMulticast: map['supportMulticast'] as bool,
    );
  }
}

