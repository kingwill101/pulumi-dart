// ignore_for_file: unused_element, unnecessary_cast


class ManagedZonePrivateVisibilityConfigNetwork {
  /// The id or fully qualified URL of the VPC network to bind to.
  /// This should be formatted like `projects/{project}/global/networks/{network}` or
  /// `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`
  final String networkUrl;

  /// Creates a new [ManagedZonePrivateVisibilityConfigNetwork].
  /// [networkUrl] The id or fully qualified URL of the VPC network to bind to.
  ManagedZonePrivateVisibilityConfigNetwork({
    required this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkUrl': networkUrl,
    };
  }

  factory ManagedZonePrivateVisibilityConfigNetwork.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigNetwork(
      networkUrl: map['networkUrl'] as String,
    );
  }
}

