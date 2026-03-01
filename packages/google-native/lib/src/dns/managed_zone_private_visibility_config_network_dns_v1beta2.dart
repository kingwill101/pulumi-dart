// ignore_for_file: unused_element, unnecessary_cast

class ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2 {
  final String? kind;

  /// The fully qualified URL of the VPC network to bind to. Format this URL like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String? networkUrl;

  /// Creates a new [ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2].
  /// [kind] Optional.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. Format this URL like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2({
    this.kind,
    this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kind': ?kind, 'networkUrl': ?networkUrl};
  }

  factory ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZonePrivateVisibilityConfigNetworkDnsV1beta2(
      kind: map['kind'] == null ? null : map['kind'] as String,
      networkUrl: map['networkUrl'] == null
          ? null
          : map['networkUrl'] as String,
    );
  }
}
