// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPublicIP.
class GetPublicIPResult {
  /// The allocation method for this IP address. Possible values are `Static` or `Dynamic`.
  final String allocationMethod;
  /// The DDoS protection mode of the public IP.
  final String ddosProtectionMode;
  /// The ID of DDoS protection plan associated with the public IP.
  final String ddosProtectionPlanId;
  /// The label for the Domain Name.
  final String domainNameLabel;
  /// Fully qualified domain name of the A DNS record associated with the public IP. This is the concatenation of the domainNameLabel and the regionalized DNS zone.
  final String fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Specifies the timeout for the TCP idle connection.
  final int idleTimeoutInMinutes;
  /// The IP address value that was allocated.
  final String ipAddress;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String> ipTags;
  /// The IP version being used, for example `IPv4` or `IPv6`.
  final String ipVersion;
  /// The region that this public ip exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The fully qualified domain name that resolves to this public IP address.
  final String reverseFqdn;
  /// The SKU of the Public IP.
  final String sku;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String> tags;
  /// A list of Availability Zones in which this Public IP is located.
  final List<String> zones;

  /// Creates a new [GetPublicIPResult].
  /// [allocationMethod] The allocation method for this IP address. Possible values are `Static` or `Dynamic`.
  /// [ddosProtectionMode] The DDoS protection mode of the public IP.
  /// [ddosProtectionPlanId] The ID of DDoS protection plan associated with the public IP.
  /// [domainNameLabel] The label for the Domain Name.
  /// [fqdn] Fully qualified domain name of the A DNS record associated with the public IP. This is the concatenation of the domainNameLabel and the regionalized DNS zone.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeoutInMinutes] Specifies the timeout for the TCP idle connection.
  /// [ipAddress] The IP address value that was allocated.
  /// [ipTags] A mapping of tags to assigned to the resource.
  /// [ipVersion] The IP version being used, for example `IPv4` or `IPv6`.
  /// [location] The region that this public ip exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [reverseFqdn] The fully qualified domain name that resolves to this public IP address.
  /// [sku] The SKU of the Public IP.
  /// [tags] A mapping of tags to assigned to the resource.
  /// [zones] A list of Availability Zones in which this Public IP is located.
  GetPublicIPResult({
    required this.allocationMethod,
    required this.ddosProtectionMode,
    required this.ddosProtectionPlanId,
    required this.domainNameLabel,
    required this.fqdn,
    required this.id,
    required this.idleTimeoutInMinutes,
    required this.ipAddress,
    required this.ipTags,
    required this.ipVersion,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.reverseFqdn,
    required this.sku,
    required this.tags,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMethod': allocationMethod,
      'ddosProtectionMode': ddosProtectionMode,
      'ddosProtectionPlanId': ddosProtectionPlanId,
      'domainNameLabel': domainNameLabel,
      'fqdn': fqdn,
      'id': id,
      'idleTimeoutInMinutes': idleTimeoutInMinutes,
      'ipAddress': ipAddress,
      'ipTags': ipTags,
      'ipVersion': ipVersion,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'reverseFqdn': reverseFqdn,
      'sku': sku,
      'tags': tags,
      'zones': zones,
    };
  }

  factory GetPublicIPResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIPResult(
      allocationMethod: map['allocationMethod'] as String,
      ddosProtectionMode: map['ddosProtectionMode'] as String,
      ddosProtectionPlanId: map['ddosProtectionPlanId'] as String,
      domainNameLabel: map['domainNameLabel'] as String,
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] as int,
      ipAddress: map['ipAddress'] as String,
      ipTags: (map['ipTags'] as Map).cast<String, String>(),
      ipVersion: map['ipVersion'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      reverseFqdn: map['reverseFqdn'] as String,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

