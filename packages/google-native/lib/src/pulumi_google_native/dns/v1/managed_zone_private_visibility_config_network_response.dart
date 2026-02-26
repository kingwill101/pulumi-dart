// ignore_for_file: unused_element, unnecessary_cast

class ManagedZonePrivateVisibilityConfigNetworkResponse {
  final String kind;

  /// The fully qualified URL of the VPC network to bind to. Format this URL like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String networkUrl;

  ManagedZonePrivateVisibilityConfigNetworkResponse({
    required this.kind,
    required this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['networkUrl'] = networkUrl;
    return map;
  }

  factory ManagedZonePrivateVisibilityConfigNetworkResponse.fromMap(
      Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigNetworkResponse(
      kind: map['kind'] as String,
      networkUrl: map['networkUrl'] as String,
    );
  }
}
