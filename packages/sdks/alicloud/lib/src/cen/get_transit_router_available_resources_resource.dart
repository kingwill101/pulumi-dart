// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterAvailableResourcesResource {
  /// (Available since v1.225.0) The list of available zones.
  final pulumi.Input<List<String>> availableZones;

  /// The list of primary zones.
  final pulumi.Input<List<String>> masterZones;

  /// The list of secondary zones.
  final pulumi.Input<List<String>> slaveZones;

  /// Specifies whether to query only the zones in which the multicast feature is supported.
  final pulumi.Input<bool> supportMulticast;

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

  factory GetTransitRouterAvailableResourcesResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTransitRouterAvailableResourcesResource(
      availableZones: pulumi.Input.fromValue(
        (map['availableZones'] as List).cast<String>(),
      ),
      masterZones: pulumi.Input.fromValue(
        (map['masterZones'] as List).cast<String>(),
      ),
      slaveZones: pulumi.Input.fromValue(
        (map['slaveZones'] as List).cast<String>(),
      ),
      supportMulticast: pulumi.Input.fromValue(map['supportMulticast'] as bool),
    );
  }
}
