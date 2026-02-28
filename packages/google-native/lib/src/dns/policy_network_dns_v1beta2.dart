// ignore_for_file: unused_element, unnecessary_cast

class PolicyNetworkDnsV1beta2 {
  final String? kind;

  /// The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String? networkUrl;

  /// Creates a new [PolicyNetworkDnsV1beta2].
  /// [kind] Optional.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  PolicyNetworkDnsV1beta2({
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

  factory PolicyNetworkDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return PolicyNetworkDnsV1beta2(
      kind: map['kind'] == null ? null : map['kind'] as String,
      networkUrl:
          map['networkUrl'] == null ? null : map['networkUrl'] as String,
    );
  }
}
