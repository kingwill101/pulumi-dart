// ignore_for_file: unused_element, unnecessary_cast


class ManagedZonePrivateVisibilityConfigNetwork {
  final String? kind;
  /// The fully qualified URL of the VPC network to bind to. Format this URL like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String? networkUrl;

  /// Creates a new [ManagedZonePrivateVisibilityConfigNetwork].
  /// [kind] Optional.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. Format this URL like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  ManagedZonePrivateVisibilityConfigNetwork({
    this.kind,
    this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'networkUrl': ?networkUrl,
    };
  }

  factory ManagedZonePrivateVisibilityConfigNetwork.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigNetwork(
      kind: map['kind'] == null ? null : map['kind'] as String,
      networkUrl: map['networkUrl'] == null ? null : map['networkUrl'] as String,
    );
  }
}

