// ignore_for_file: unused_element, unnecessary_cast

class ManagedZonePrivateVisibilityConfigNetwork {
  final String? kind;

  /// The fully qualified URL of the VPC network to bind to. Format this URL like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String? networkUrl;

  ManagedZonePrivateVisibilityConfigNetwork({
    this.kind,
    this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final networkUrlValue = networkUrl;
    if (networkUrlValue != null) {
      map['networkUrl'] = networkUrlValue;
    }
    return map;
  }

  factory ManagedZonePrivateVisibilityConfigNetwork.fromMap(
      Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigNetwork(
      kind: map['kind'] == null ? null : map['kind'] as String,
      networkUrl:
          map['networkUrl'] == null ? null : map['networkUrl'] as String,
    );
  }
}
