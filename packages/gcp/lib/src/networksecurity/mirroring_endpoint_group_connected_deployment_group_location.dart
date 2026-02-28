// ignore_for_file: unused_element, unnecessary_cast

class MirroringEndpointGroupConnectedDeploymentGroupLocation {
  /// The cloud location of the endpoint group, currently restricted to `global`.
  final String? location;

  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  final String? state;

  /// Creates a new [MirroringEndpointGroupConnectedDeploymentGroupLocation].
  /// [location] The cloud location of the endpoint group, currently restricted to `global`.
  /// [state] (Output)
  MirroringEndpointGroupConnectedDeploymentGroupLocation({
    this.location,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory MirroringEndpointGroupConnectedDeploymentGroupLocation.fromMap(
      Map<String, dynamic> map) {
    return MirroringEndpointGroupConnectedDeploymentGroupLocation(
      location: map['location'] == null ? null : map['location'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
