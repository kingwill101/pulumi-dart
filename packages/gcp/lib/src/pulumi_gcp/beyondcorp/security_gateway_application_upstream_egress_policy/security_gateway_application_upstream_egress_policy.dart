// ignore_for_file: unused_element, unnecessary_cast

class SecurityGatewayApplicationUpstreamEgressPolicy {
  /// Required. List of regions where the application sends traffic to.
  final List<String> regions;

  SecurityGatewayApplicationUpstreamEgressPolicy({
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regions'] = regions;
    return map;
  }

  factory SecurityGatewayApplicationUpstreamEgressPolicy.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamEgressPolicy(
      regions: (map['regions'] as List).cast<String>(),
    );
  }
}
