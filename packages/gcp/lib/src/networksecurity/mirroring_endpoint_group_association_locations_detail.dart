// ignore_for_file: unused_element, unnecessary_cast

class MirroringEndpointGroupAssociationLocationsDetail {
  /// The cloud location of the association, currently restricted to `global`.
  final String? location;

  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  final String? state;

  /// Creates a new [MirroringEndpointGroupAssociationLocationsDetail].
  /// [location] The cloud location of the association, currently restricted to `global`.
  /// [state] (Output)
  MirroringEndpointGroupAssociationLocationsDetail({
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

  factory MirroringEndpointGroupAssociationLocationsDetail.fromMap(
      Map<String, dynamic> map) {
    return MirroringEndpointGroupAssociationLocationsDetail(
      location: map['location'] == null ? null : map['location'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
