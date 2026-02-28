// ignore_for_file: unused_element, unnecessary_cast

class ClusterNode {
  final String? address;
  final String? availabilityZone;
  final String? id;

  /// The port used by the configuration endpoint
  final int? port;

  /// Creates a new [ClusterNode].
  /// [address] Optional.
  /// [availabilityZone] Optional.
  /// [id] Optional.
  /// [port] The port used by the configuration endpoint
  ClusterNode({
    this.address,
    this.availabilityZone,
    this.id,
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory ClusterNode.fromMap(Map<String, dynamic> map) {
    return ClusterNode(
      address: map['address'] == null ? null : map['address'] as String,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
