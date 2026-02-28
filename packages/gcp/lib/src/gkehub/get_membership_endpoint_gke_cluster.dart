// ignore_for_file: unused_element, unnecessary_cast

class GetMembershipEndpointGkeCluster {
  final String resourceLink;

  /// Creates a new [GetMembershipEndpointGkeCluster].
  /// [resourceLink] Required.
  GetMembershipEndpointGkeCluster({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceLink'] = resourceLink;
    return map;
  }

  factory GetMembershipEndpointGkeCluster.fromMap(Map<String, dynamic> map) {
    return GetMembershipEndpointGkeCluster(
      resourceLink: map['resourceLink'] as String,
    );
  }
}
