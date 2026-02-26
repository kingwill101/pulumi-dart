// ignore_for_file: unused_element, unnecessary_cast

class PolicyNetwork {
  final String? kind;

  /// The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String? networkUrl;

  PolicyNetwork({
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

  factory PolicyNetwork.fromMap(Map<String, dynamic> map) {
    return PolicyNetwork(
      kind: map['kind'] == null ? null : map['kind'] as String,
      networkUrl:
          map['networkUrl'] == null ? null : map['networkUrl'] as String,
    );
  }
}
