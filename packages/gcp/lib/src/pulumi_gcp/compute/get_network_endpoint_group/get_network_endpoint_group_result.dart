// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNetworkEndpointGroup.
class GetNetworkEndpointGroupResult {
  /// The NEG default port.
  final int defaultPort;

  /// The NEG description.
  final String description;
  final int generatedId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? name;

  /// The network to which all network endpoints in the NEG belong.
  final String network;

  /// Type of network endpoints in this network endpoint group.
  final String networkEndpointType;
  final String? project;
  final String? selfLink;

  /// Number of network endpoints in the network endpoint group.
  final int size;

  /// subnetwork to which all network endpoints in the NEG belong.
  final String subnetwork;
  final String? zone;

  GetNetworkEndpointGroupResult({
    required this.defaultPort,
    required this.description,
    required this.generatedId,
    required this.id,
    this.name,
    required this.network,
    required this.networkEndpointType,
    this.project,
    this.selfLink,
    required this.size,
    required this.subnetwork,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultPort'] = defaultPort;
    map['description'] = description;
    map['generatedId'] = generatedId;
    map['id'] = id;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    map['networkEndpointType'] = networkEndpointType;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    map['size'] = size;
    map['subnetwork'] = subnetwork;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetNetworkEndpointGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkEndpointGroupResult(
      defaultPort: map['defaultPort'] as int,
      description: map['description'] as String,
      generatedId: map['generatedId'] as int,
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] as String,
      networkEndpointType: map['networkEndpointType'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      size: map['size'] as int,
      subnetwork: map['subnetwork'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
