// ignore_for_file: unused_element, unnecessary_cast


class InterceptEndpointGroupAssociationLocationsDetail {
  /// The cloud location of the association, currently restricted to `global`.
  final String? location;
  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  final String? state;

  /// Creates a new [InterceptEndpointGroupAssociationLocationsDetail].
  /// [location] The cloud location of the association, currently restricted to `global`.
  /// [state] (Output)
  InterceptEndpointGroupAssociationLocationsDetail({
    this.location,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'state': ?state,
    };
  }

  factory InterceptEndpointGroupAssociationLocationsDetail.fromMap(Map<String, dynamic> map) {
    return InterceptEndpointGroupAssociationLocationsDetail(
      location: map['location'] == null ? null : map['location'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

