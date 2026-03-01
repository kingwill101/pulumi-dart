// ignore_for_file: unused_element, unnecessary_cast

class InterceptEndpointGroupConnectedDeploymentGroupLocation {
  /// The cloud location of the endpoint group, currently restricted to `global`.
  final String? location;

  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  final String? state;

  /// Creates a new [InterceptEndpointGroupConnectedDeploymentGroupLocation].
  /// [location] The cloud location of the endpoint group, currently restricted to `global`.
  /// [state] (Output)
  InterceptEndpointGroupConnectedDeploymentGroupLocation({
    this.location,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': ?location, 'state': ?state};
  }

  factory InterceptEndpointGroupConnectedDeploymentGroupLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return InterceptEndpointGroupConnectedDeploymentGroupLocation(
      location: map['location'] == null ? null : map['location'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
