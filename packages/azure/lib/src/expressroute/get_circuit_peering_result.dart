// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCircuitPeering.
class GetCircuitPeeringResult {
  /// The ASN used by Azure for the peering.
  final int azureAsn;
  final String expressRouteCircuitName;
  final String gatewayManagerEtag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Indicates if IPv4 is enabled.
  final bool ipv4Enabled;
  final int peerAsn;
  /// The type of the ExpressRoute Circuit Peering.
  final String peeringType;
  /// The primary port used by Azure for this peering.
  final String primaryAzurePort;
  /// The primary peer address prefix.
  final String primaryPeerAddressPrefix;
  final String resourceGroupName;
  final String routeFilterId;
  /// The secondary port used by Azure for this peering.
  final String secondaryAzurePort;
  /// The secondary peer address prefix.
  final String secondaryPeerAddressPrefix;
  final String sharedKey;
  /// The VLAN ID used for this peering.
  final int vlanId;

  /// Creates a new [GetCircuitPeeringResult].
  /// [azureAsn] The ASN used by Azure for the peering.
  /// [expressRouteCircuitName] Required.
  /// [gatewayManagerEtag] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipv4Enabled] Indicates if IPv4 is enabled.
  /// [peerAsn] Required.
  /// [peeringType] The type of the ExpressRoute Circuit Peering.
  /// [primaryAzurePort] The primary port used by Azure for this peering.
  /// [primaryPeerAddressPrefix] The primary peer address prefix.
  /// [resourceGroupName] Required.
  /// [routeFilterId] Required.
  /// [secondaryAzurePort] The secondary port used by Azure for this peering.
  /// [secondaryPeerAddressPrefix] The secondary peer address prefix.
  /// [sharedKey] Required.
  /// [vlanId] The VLAN ID used for this peering.
  GetCircuitPeeringResult({
    required this.azureAsn,
    required this.expressRouteCircuitName,
    required this.gatewayManagerEtag,
    required this.id,
    required this.ipv4Enabled,
    required this.peerAsn,
    required this.peeringType,
    required this.primaryAzurePort,
    required this.primaryPeerAddressPrefix,
    required this.resourceGroupName,
    required this.routeFilterId,
    required this.secondaryAzurePort,
    required this.secondaryPeerAddressPrefix,
    required this.sharedKey,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureAsn': azureAsn,
      'expressRouteCircuitName': expressRouteCircuitName,
      'gatewayManagerEtag': gatewayManagerEtag,
      'id': id,
      'ipv4Enabled': ipv4Enabled,
      'peerAsn': peerAsn,
      'peeringType': peeringType,
      'primaryAzurePort': primaryAzurePort,
      'primaryPeerAddressPrefix': primaryPeerAddressPrefix,
      'resourceGroupName': resourceGroupName,
      'routeFilterId': routeFilterId,
      'secondaryAzurePort': secondaryAzurePort,
      'secondaryPeerAddressPrefix': secondaryPeerAddressPrefix,
      'sharedKey': sharedKey,
      'vlanId': vlanId,
    };
  }

  factory GetCircuitPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetCircuitPeeringResult(
      azureAsn: map['azureAsn'] as int,
      expressRouteCircuitName: map['expressRouteCircuitName'] as String,
      gatewayManagerEtag: map['gatewayManagerEtag'] as String,
      id: map['id'] as String,
      ipv4Enabled: map['ipv4Enabled'] as bool,
      peerAsn: map['peerAsn'] as int,
      peeringType: map['peeringType'] as String,
      primaryAzurePort: map['primaryAzurePort'] as String,
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routeFilterId: map['routeFilterId'] as String,
      secondaryAzurePort: map['secondaryAzurePort'] as String,
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] as String,
      sharedKey: map['sharedKey'] as String,
      vlanId: map['vlanId'] as int,
    );
  }
}

