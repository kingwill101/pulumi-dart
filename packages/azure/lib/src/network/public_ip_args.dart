// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_public_ip_public_ip_args_doc}
/// The set of arguments for PublicIp.
/// {@endtemplate}
/// {@macro pulumi_network_public_ip_public_ip_args_doc}
class PublicIpArgs {
  /// Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`.
  ///
  /// > **Note** `Dynamic` Public IP Addresses aren't allocated until they're assigned to a resource (such as a Virtual Machine or a Load Balancer) by design within Azure. See `ip_address` argument.
  final pulumi.Input<String> allocationMethod;
  /// The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`.
  final pulumi.Input<String>? ddosProtectionMode;
  /// The ID of DDoS protection plan associated with the public IP.
  ///
  /// > **Note:** `ddos_protection_plan_id` can only be set when `ddos_protection_mode` is `Enabled`.
  final pulumi.Input<String>? ddosProtectionPlanId;
  /// Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
  final pulumi.Input<String>? domainNameLabel;
  /// Scope for the domain name label. If a domain name label scope is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN. Possible values are `NoReuse`, `ResourceGroupReuse`, `SubscriptionReuse` and `TenantReuse`.
  final pulumi.Input<String>? domainNameLabelScope;
  /// Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created.
  final pulumi.Input<String>? edgeZone;
  /// Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created.
  ///
  /// > **Note** IP Tag `RoutingPreference` requires multiple `zones` and `Standard` SKU to be set.
  final pulumi.Input<Map<String, String>>? ipTags;
  /// The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`.
  ///
  /// > **Note** Only `static` IP address allocation is supported for IPv6.
  final pulumi.Input<String>? ipVersion;
  /// Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Public IP. Changing this forces a new Public IP to be created.
  final pulumi.Input<String>? name;
  /// If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publicIpPrefixId;
  /// The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.
  final pulumi.Input<String>? reverseFqdn;
  /// The SKU of the Public IP. Accepted values are `Basic` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  ///
  /// > **Note** Public IP Standard SKUs require `allocation_method` to be set to `Static`.
  final pulumi.Input<String>? sku;
  /// The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created.
  ///
  /// > **Note** When `sku_tier` is set to `Global`, `sku` must be set to `Standard`.
  final pulumi.Input<String>? skuTier;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Availability Zones are only supported with a [Standard SKU](https://docs.microsoft.com/azure/virtual-network/virtual-network-ip-addresses-overview-arm#standard) and [in select regions](https://docs.microsoft.com/azure/availability-zones/az-overview) at this time. Standard SKU Public IP Addresses that do not specify a zone are **not** zone-redundant by default.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PublicIpArgs].
  /// [allocationMethod] Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`.
  /// [ddosProtectionMode] The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`.
  /// [ddosProtectionPlanId] The ID of DDoS protection plan associated with the public IP.
  /// [domainNameLabel] Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
  /// [domainNameLabelScope] Scope for the domain name label. If a domain name label scope is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN. Possible values are `NoReuse`, `ResourceGroupReuse`, `SubscriptionReuse` and `TenantReuse`.
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created.
  /// [idleTimeoutInMinutes] Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes.
  /// [ipTags] A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created.
  /// [ipVersion] The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`.
  /// [location] Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Public IP. Changing this forces a new Public IP to be created.
  /// [publicIpPrefixId] If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created.
  /// [reverseFqdn] A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.
  /// [sku] The SKU of the Public IP. Accepted values are `Basic` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  /// [skuTier] The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zones] A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created.
  PublicIpArgs({
    required String allocationMethod,
    String? ddosProtectionMode,
    String? ddosProtectionPlanId,
    String? domainNameLabel,
    String? domainNameLabelScope,
    String? edgeZone,
    int? idleTimeoutInMinutes,
    Map<String, String>? ipTags,
    String? ipVersion,
    String? location,
    String? name,
    String? publicIpPrefixId,
    required String resourceGroupName,
    String? reverseFqdn,
    String? sku,
    String? skuTier,
    Map<String, String>? tags,
    List<String>? zones,
  }) :
      allocationMethod = pulumi.Input.asInput<String>(allocationMethod),
      ddosProtectionMode = pulumi.Input.asOptionalInput<String>(ddosProtectionMode),
      ddosProtectionPlanId = pulumi.Input.asOptionalInput<String>(ddosProtectionPlanId),
      domainNameLabel = pulumi.Input.asOptionalInput<String>(domainNameLabel),
      domainNameLabelScope = pulumi.Input.asOptionalInput<String>(domainNameLabelScope),
      edgeZone = pulumi.Input.asOptionalInput<String>(edgeZone),
      idleTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(idleTimeoutInMinutes),
      ipTags = pulumi.Input.asOptionalInput<Map<String, String>>(ipTags),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicIpPrefixId = pulumi.Input.asOptionalInput<String>(publicIpPrefixId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      reverseFqdn = pulumi.Input.asOptionalInput<String>(reverseFqdn),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      skuTier = pulumi.Input.asOptionalInput<String>(skuTier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMethod': allocationMethod,
      'ddosProtectionMode': ?ddosProtectionMode,
      'ddosProtectionPlanId': ?ddosProtectionPlanId,
      'domainNameLabel': ?domainNameLabel,
      'domainNameLabelScope': ?domainNameLabelScope,
      'edgeZone': ?edgeZone,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipTags': ?ipTags,
      'ipVersion': ?ipVersion,
      'location': ?location,
      'name': ?name,
      'publicIpPrefixId': ?publicIpPrefixId,
      'resourceGroupName': resourceGroupName,
      'reverseFqdn': ?reverseFqdn,
      'sku': ?sku,
      'skuTier': ?skuTier,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory PublicIpArgs.fromMap(Map<String, dynamic> map) {
    return PublicIpArgs(
      allocationMethod: map['allocationMethod'] as String,
      ddosProtectionMode: map['ddosProtectionMode'] == null ? null : map['ddosProtectionMode'] as String,
      ddosProtectionPlanId: map['ddosProtectionPlanId'] == null ? null : map['ddosProtectionPlanId'] as String,
      domainNameLabel: map['domainNameLabel'] == null ? null : map['domainNameLabel'] as String,
      domainNameLabelScope: map['domainNameLabelScope'] == null ? null : map['domainNameLabelScope'] as String,
      edgeZone: map['edgeZone'] == null ? null : map['edgeZone'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      ipTags: map['ipTags'] == null ? null : (map['ipTags'] as Map).cast<String, String>(),
      ipVersion: map['ipVersion'] == null ? null : map['ipVersion'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      publicIpPrefixId: map['publicIpPrefixId'] == null ? null : map['publicIpPrefixId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      reverseFqdn: map['reverseFqdn'] == null ? null : map['reverseFqdn'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      skuTier: map['skuTier'] == null ? null : map['skuTier'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

