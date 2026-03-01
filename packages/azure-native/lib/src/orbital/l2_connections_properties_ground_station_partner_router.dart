// ignore_for_file: unused_element, unnecessary_cast


/// The name of the partner router to establish a connection to within the ground station.
class L2ConnectionsPropertiesGroundStationPartnerRouter {
  /// The unique name of the partner router that cross-connects with the Orbital Edge Router at the ground station site.
  final String name;

  /// Creates a new [L2ConnectionsPropertiesGroundStationPartnerRouter].
  /// [name] The unique name of the partner router that cross-connects with the Orbital Edge Router at the ground station site.
  L2ConnectionsPropertiesGroundStationPartnerRouter({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory L2ConnectionsPropertiesGroundStationPartnerRouter.fromMap(Map<String, dynamic> map) {
    return L2ConnectionsPropertiesGroundStationPartnerRouter(
      name: map['name'] as String,
    );
  }
}

