// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNatGateway.
class GetNatGatewayResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The idle timeout in minutes which is used for the NAT Gateway.
  final int idleTimeoutInMinutes;
  /// The location where the NAT Gateway exists.
  final String location;
  final String name;
  /// A list of existing Public IP Address resource IDs which the NAT Gateway is using.
  final List<String> publicIpAddressIds;
  /// A list of existing Public IP Prefix resource IDs which the NAT Gateway is using.
  final List<String> publicIpPrefixIds;
  final String resourceGroupName;
  /// The Resource GUID of the NAT Gateway.
  final String resourceGuid;
  /// The SKU used by the NAT Gateway.
  final String skuName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// A list of Availability Zones which the NAT Gateway exists in.
  final List<String> zones;

  /// Creates a new [GetNatGatewayResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeoutInMinutes] The idle timeout in minutes which is used for the NAT Gateway.
  /// [location] The location where the NAT Gateway exists.
  /// [name] Required.
  /// [publicIpAddressIds] A list of existing Public IP Address resource IDs which the NAT Gateway is using.
  /// [publicIpPrefixIds] A list of existing Public IP Prefix resource IDs which the NAT Gateway is using.
  /// [resourceGroupName] Required.
  /// [resourceGuid] The Resource GUID of the NAT Gateway.
  /// [skuName] The SKU used by the NAT Gateway.
  /// [tags] A mapping of tags assigned to the resource.
  /// [zones] A list of Availability Zones which the NAT Gateway exists in.
  GetNatGatewayResult({
    required this.id,
    required this.idleTimeoutInMinutes,
    required this.location,
    required this.name,
    required this.publicIpAddressIds,
    required this.publicIpPrefixIds,
    required this.resourceGroupName,
    required this.resourceGuid,
    required this.skuName,
    required this.tags,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'idleTimeoutInMinutes': idleTimeoutInMinutes,
      'location': location,
      'name': name,
      'publicIpAddressIds': publicIpAddressIds,
      'publicIpPrefixIds': publicIpPrefixIds,
      'resourceGroupName': resourceGroupName,
      'resourceGuid': resourceGuid,
      'skuName': skuName,
      'tags': tags,
      'zones': zones,
    };
  }

  factory GetNatGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayResult(
      id: map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] as int,
      location: map['location'] as String,
      name: map['name'] as String,
      publicIpAddressIds: (map['publicIpAddressIds'] as List).cast<String>(),
      publicIpPrefixIds: (map['publicIpPrefixIds'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      resourceGuid: map['resourceGuid'] as String,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

