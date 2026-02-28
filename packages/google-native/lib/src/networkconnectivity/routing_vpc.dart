// ignore_for_file: unused_element, unnecessary_cast

/// RoutingVPC contains information about the VPC networks associated with the spokes of a Network Connectivity Center hub.
class RoutingVPC {
  /// The URI of the VPC network.
  final String? uri;

  /// Creates a new [RoutingVPC].
  /// [uri] The URI of the VPC network.
  RoutingVPC({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory RoutingVPC.fromMap(Map<String, dynamic> map) {
    return RoutingVPC(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
