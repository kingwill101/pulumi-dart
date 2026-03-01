// ignore_for_file: unused_element, unnecessary_cast

class ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2 {
  final String kind;

  /// The fully qualified URL of the VPC network to bind to. Format this URL like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String networkUrl;

  /// Creates a new [ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2].
  /// [kind] Required.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. Format this URL like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2({
    required this.kind,
    required this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kind': kind, 'networkUrl': networkUrl};
  }

  factory ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZonePrivateVisibilityConfigNetworkResponseDnsV1beta2(
      kind: map['kind'] as String,
      networkUrl: map['networkUrl'] as String,
    );
  }
}
