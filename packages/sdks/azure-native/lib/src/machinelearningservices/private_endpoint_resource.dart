// ignore_for_file: unused_element, unnecessary_cast


/// The PE network resource that is linked to this PE connection.
class PrivateEndpointResource {
  /// The subnetId that the private endpoint is connected to.
  final String? subnetArmId;

  /// Creates a new [PrivateEndpointResource].
  /// [subnetArmId] The subnetId that the private endpoint is connected to.
  PrivateEndpointResource({
    this.subnetArmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetArmId': ?subnetArmId,
    };
  }

  factory PrivateEndpointResource.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResource(
      subnetArmId: map['subnetArmId'] == null ? null : map['subnetArmId'] as String,
    );
  }
}

