// ignore_for_file: unused_element, unnecessary_cast

/// Fleet related configuration. Fleets are a Google Cloud concept for logically organizing clusters, letting you use and manage multi-cluster capabilities and apply consistent policies across your systems. See [Anthos Fleets](`https://cloud.google.com/anthos/multicluster-management/fleets`) for more details on Anthos multi-cluster capabilities using Fleets. ##
class FleetResponse {
  /// The name of the managed fleet Membership resource associated to this cluster. Membership names are formatted as `projects//locations//memberships/`.
  final String membership;

  /// Creates a new [FleetResponse].
  /// [membership] The name of the managed fleet Membership resource associated to this cluster. Membership names are formatted as `projects//locations//memberships/`.
  FleetResponse({
    required this.membership,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['membership'] = membership;
    return map;
  }

  factory FleetResponse.fromMap(Map<String, dynamic> map) {
    return FleetResponse(
      membership: map['membership'] as String,
    );
  }
}
