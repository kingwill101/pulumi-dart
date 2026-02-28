// ignore_for_file: unused_element, unnecessary_cast

class SecurityGatewayApplicationUpstreamNetwork {
  /// Required. Network name is of the format:
  /// `projects/{project}/global/networks/{network}`
  final String name;

  /// Creates a new [SecurityGatewayApplicationUpstreamNetwork].
  /// [name] Required. Network name is of the format:
  SecurityGatewayApplicationUpstreamNetwork({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory SecurityGatewayApplicationUpstreamNetwork.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamNetwork(
      name: map['name'] as String,
    );
  }
}
