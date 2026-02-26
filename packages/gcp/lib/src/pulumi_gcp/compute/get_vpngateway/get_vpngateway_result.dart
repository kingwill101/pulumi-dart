// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getVPNGateway.
class GetVPNGatewayResult {
  /// Description of this VPN gateway.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// The network of this VPN gateway.
  final String network;
  final String project;

  /// Region of this VPN gateway.
  final String region;

  /// The URI of the resource.
  final String selfLink;

  GetVPNGatewayResult({
    required this.description,
    required this.id,
    required this.name,
    required this.network,
    required this.project,
    required this.region,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['network'] = network;
    map['project'] = project;
    map['region'] = region;
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetVPNGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVPNGatewayResult(
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
