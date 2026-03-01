// ignore_for_file: unused_element, unnecessary_cast

class ManagedZonePeeringConfigTargetNetwork {
  /// The id or fully qualified URL of the VPC network to forward queries to.
  /// This should be formatted like `projects/{project}/global/networks/{network}` or
  /// `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`
  final String networkUrl;

  /// Creates a new [ManagedZonePeeringConfigTargetNetwork].
  /// [networkUrl] The id or fully qualified URL of the VPC network to forward queries to.
  ManagedZonePeeringConfigTargetNetwork({required this.networkUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'networkUrl': networkUrl};
  }

  factory ManagedZonePeeringConfigTargetNetwork.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZonePeeringConfigTargetNetwork(
      networkUrl: map['networkUrl'] as String,
    );
  }
}
