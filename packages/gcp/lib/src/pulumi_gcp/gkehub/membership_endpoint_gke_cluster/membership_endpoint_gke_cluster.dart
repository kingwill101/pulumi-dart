// ignore_for_file: unused_element, unnecessary_cast

class MembershipEndpointGkeCluster {
  final String resourceLink;

  MembershipEndpointGkeCluster({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceLink'] = resourceLink;
    return map;
  }

  factory MembershipEndpointGkeCluster.fromMap(Map<String, dynamic> map) {
    return MembershipEndpointGkeCluster(
      resourceLink: map['resourceLink'] as String,
    );
  }
}
