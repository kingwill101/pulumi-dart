// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNetwork.
class GetNetworkResult {
  /// Description of this network.
  final String description;

  /// The IP address of the gateway.
  final String gatewayIpv4;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The ula internal ipv6 range assigned to this network.
  final String internalIpv6Range;
  final String name;

  /// The numeric unique identifier for the resource.
  final int networkId;

  /// A full or partial URL of the network profile to apply to this network.
  final String? networkProfile;

  /// (Deprecated) The numeric unique identifier for the resource. <span pulumi-lang-nodejs="`numericId`" pulumi-lang-dotnet="`NumericId`" pulumi-lang-go="`numericId`" pulumi-lang-python="`numeric_id`" pulumi-lang-yaml="`numericId`" pulumi-lang-java="`numericId`">`numeric_id`</span> is deprecated and will be removed in a future major release. Use <span pulumi-lang-nodejs="`networkId`" pulumi-lang-dotnet="`NetworkId`" pulumi-lang-go="`networkId`" pulumi-lang-python="`network_id`" pulumi-lang-yaml="`networkId`" pulumi-lang-java="`networkId`">`network_id`</span> instead.
  final String numericId;
  final String? project;

  /// The URI of the resource.
  final String selfLink;

  /// the list of subnetworks which belong to the network
  final List<String> subnetworksSelfLinks;

  GetNetworkResult({
    required this.description,
    required this.gatewayIpv4,
    required this.id,
    required this.internalIpv6Range,
    required this.name,
    required this.networkId,
    this.networkProfile,
    required this.numericId,
    this.project,
    required this.selfLink,
    required this.subnetworksSelfLinks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['gatewayIpv4'] = gatewayIpv4;
    map['id'] = id;
    map['internalIpv6Range'] = internalIpv6Range;
    map['name'] = name;
    map['networkId'] = networkId;
    final networkProfileValue = networkProfile;
    if (networkProfileValue != null) {
      map['networkProfile'] = networkProfileValue;
    }
    map['numericId'] = numericId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['selfLink'] = selfLink;
    map['subnetworksSelfLinks'] = subnetworksSelfLinks;
    return map;
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
      description: map['description'] as String,
      gatewayIpv4: map['gatewayIpv4'] as String,
      id: map['id'] as String,
      internalIpv6Range: map['internalIpv6Range'] as String,
      name: map['name'] as String,
      networkId: map['networkId'] as int,
      networkProfile: map['networkProfile'] == null
          ? null
          : map['networkProfile'] as String,
      numericId: map['numericId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] as String,
      subnetworksSelfLinks:
          (map['subnetworksSelfLinks'] as List).cast<String>(),
    );
  }
}
