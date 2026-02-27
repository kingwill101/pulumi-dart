// ignore_for_file: unused_element, unnecessary_cast

class PolicyNetworkResponseDnsV1beta2 {
  final String kind;

  /// The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String networkUrl;

  PolicyNetworkResponseDnsV1beta2({
    required this.kind,
    required this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['networkUrl'] = networkUrl;
    return map;
  }

  factory PolicyNetworkResponseDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return PolicyNetworkResponseDnsV1beta2(
      kind: map['kind'] as String,
      networkUrl: map['networkUrl'] as String,
    );
  }
}
