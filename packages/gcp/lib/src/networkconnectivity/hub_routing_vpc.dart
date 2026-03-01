// ignore_for_file: unused_element, unnecessary_cast

class HubRoutingVpc {
  /// The URI of the VPC network.
  final String? uri;

  /// Creates a new [HubRoutingVpc].
  /// [uri] The URI of the VPC network.
  HubRoutingVpc({this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': ?uri};
  }

  factory HubRoutingVpc.fromMap(Map<String, dynamic> map) {
    return HubRoutingVpc(uri: map['uri'] == null ? null : map['uri'] as String);
  }
}
