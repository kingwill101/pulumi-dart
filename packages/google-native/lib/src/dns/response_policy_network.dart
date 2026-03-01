// ignore_for_file: unused_element, unnecessary_cast

class ResponsePolicyNetwork {
  final String? kind;

  /// The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String? networkUrl;

  /// Creates a new [ResponsePolicyNetwork].
  /// [kind] Optional.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  ResponsePolicyNetwork({this.kind, this.networkUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kind': ?kind, 'networkUrl': ?networkUrl};
  }

  factory ResponsePolicyNetwork.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyNetwork(
      kind: map['kind'] == null ? null : map['kind'] as String,
      networkUrl: map['networkUrl'] == null
          ? null
          : map['networkUrl'] as String,
    );
  }
}
