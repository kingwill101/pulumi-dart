// ignore_for_file: unused_element, unnecessary_cast

class ClusterControlPlaneRemote {
  /// Name of the Google Distributed Cloud Edge zones where this node pool
  /// will be created. For example: `us-central1-edge-customer-a`.
  final String? nodeLocation;

  /// Creates a new [ClusterControlPlaneRemote].
  /// [nodeLocation] Name of the Google Distributed Cloud Edge zones where this node pool
  ClusterControlPlaneRemote({this.nodeLocation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeLocation': ?nodeLocation};
  }

  factory ClusterControlPlaneRemote.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneRemote(
      nodeLocation: map['nodeLocation'] == null
          ? null
          : map['nodeLocation'] as String,
    );
  }
}
