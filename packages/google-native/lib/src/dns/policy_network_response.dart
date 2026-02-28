// ignore_for_file: unused_element, unnecessary_cast


class PolicyNetworkResponse {
  final String kind;
  /// The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String networkUrl;

  /// Creates a new [PolicyNetworkResponse].
  /// [kind] Required.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  PolicyNetworkResponse({
    required this.kind,
    required this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'networkUrl': networkUrl,
    };
  }

  factory PolicyNetworkResponse.fromMap(Map<String, dynamic> map) {
    return PolicyNetworkResponse(
      kind: map['kind'] as String,
      networkUrl: map['networkUrl'] as String,
    );
  }
}

