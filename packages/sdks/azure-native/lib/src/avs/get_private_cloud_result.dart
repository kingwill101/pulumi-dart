// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_properties_response.dart';
import 'circuit_response.dart';
import 'encryption_response.dart';
import 'endpoints_response.dart';
import 'identity_source_response.dart';
import 'management_cluster_response.dart';
import 'sku_response.dart';
import 'system_assigned_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateCloud.
class GetPrivateCloudResult {
  /// Properties describing how the cloud is distributed across availability zones
  final AvailabilityPropertiesResponse? availability;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// An ExpressRoute Circuit
  final CircuitResponse? circuit;
  /// The type of DNS zone to use.
  final String? dnsZoneType;
  /// Customer managed key encryption, can be enabled or disabled
  final EncryptionResponse? encryption;
  /// The endpoints
  final EndpointsResponse endpoints;
  /// Array of additional networks noncontiguous with networkBlock. Networks must be
  /// unique and non-overlapping across VNet in your subscription, on-premise, and
  /// this privateCloud networkBlock attribute. Make sure the CIDR format conforms to
  /// (A.B.C.D/X).
  final List<String>? extendedNetworkBlocks;
  /// Array of cloud link IDs from other clouds that connect to this one
  final List<String> externalCloudLinks;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final SystemAssignedServiceIdentityResponse? identity;
  /// vCenter Single Sign On Identity Sources
  final List<IdentitySourceResponse>? identitySources;
  /// Connectivity to internet is enabled or disabled
  final String? internet;
  /// The geo-location where the resource lives
  final String location;
  /// The default cluster used for management
  final ManagementClusterResponse managementCluster;
  /// Network used to access vCenter Server and NSX-T Manager
  final String managementNetwork;
  /// The name of the resource
  final String name;
  /// The block of addresses should be unique across VNet in your subscription as
  /// well as on-premise. Make sure the CIDR format is conformed to (A.B.C.D/X) where
  /// A,B,C,D are between 0 and 255, and X is between 0 and 22
  final String networkBlock;
  /// Flag to indicate whether the private cloud has the quota for provisioned NSX
  /// Public IP count raised from 64 to 1024
  final String nsxPublicIpQuotaRaised;
  /// Thumbprint of the NSX-T Manager SSL certificate
  final String nsxtCertificateThumbprint;
  /// Optionally, set the NSX-T Manager password when the private cloud is created
  final String? nsxtPassword;
  /// Used for virtual machine cold migration, cloning, and snapshot migration
  final String provisioningNetwork;
  /// The provisioning state
  final String provisioningState;
  /// A secondary expressRoute circuit from a separate AZ. Only present in a
  /// stretched private cloud
  final CircuitResponse? secondaryCircuit;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  final SkuResponse sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Thumbprint of the vCenter Server SSL certificate
  final String vcenterCertificateThumbprint;
  /// Optionally, set the vCenter admin password when the private cloud is created
  final String? vcenterPassword;
  /// Azure resource ID of the virtual network
  final String? virtualNetworkId;
  /// Used for live migration of virtual machines
  final String vmotionNetwork;

  /// Creates a new [GetPrivateCloudResult].
  /// [availability] Properties describing how the cloud is distributed across availability zones
  /// [azureApiVersion] The Azure API version of the resource.
  /// [circuit] An ExpressRoute Circuit
  /// [dnsZoneType] The type of DNS zone to use.
  /// [encryption] Customer managed key encryption, can be enabled or disabled
  /// [endpoints] The endpoints
  /// [extendedNetworkBlocks] Array of additional networks noncontiguous with networkBlock. Networks must be
  /// [externalCloudLinks] Array of cloud link IDs from other clouds that connect to this one
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [identitySources] vCenter Single Sign On Identity Sources
  /// [internet] Connectivity to internet is enabled or disabled
  /// [location] The geo-location where the resource lives
  /// [managementCluster] The default cluster used for management
  /// [managementNetwork] Network used to access vCenter Server and NSX-T Manager
  /// [name] The name of the resource
  /// [networkBlock] The block of addresses should be unique across VNet in your subscription as
  /// [nsxPublicIpQuotaRaised] Flag to indicate whether the private cloud has the quota for provisioned NSX
  /// [nsxtCertificateThumbprint] Thumbprint of the NSX-T Manager SSL certificate
  /// [nsxtPassword] Optionally, set the NSX-T Manager password when the private cloud is created
  /// [provisioningNetwork] Used for virtual machine cold migration, cloning, and snapshot migration
  /// [provisioningState] The provisioning state
  /// [secondaryCircuit] A secondary expressRoute circuit from a separate AZ. Only present in a
  /// [sku] The SKU (Stock Keeping Unit) assigned to this resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vcenterCertificateThumbprint] Thumbprint of the vCenter Server SSL certificate
  /// [vcenterPassword] Optionally, set the vCenter admin password when the private cloud is created
  /// [virtualNetworkId] Azure resource ID of the virtual network
  /// [vmotionNetwork] Used for live migration of virtual machines
  GetPrivateCloudResult({
    this.availability,
    required this.azureApiVersion,
    this.circuit,
    this.dnsZoneType,
    this.encryption,
    required this.endpoints,
    this.extendedNetworkBlocks,
    required this.externalCloudLinks,
    required this.id,
    this.identity,
    this.identitySources,
    this.internet,
    required this.location,
    required this.managementCluster,
    required this.managementNetwork,
    required this.name,
    required this.networkBlock,
    required this.nsxPublicIpQuotaRaised,
    required this.nsxtCertificateThumbprint,
    this.nsxtPassword,
    required this.provisioningNetwork,
    required this.provisioningState,
    this.secondaryCircuit,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.type,
    required this.vcenterCertificateThumbprint,
    this.vcenterPassword,
    this.virtualNetworkId,
    required this.vmotionNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availability': ?availability == null ? null : availability!.toMap(),
      'azureApiVersion': azureApiVersion,
      'circuit': ?circuit == null ? null : circuit!.toMap(),
      'dnsZoneType': ?dnsZoneType,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'endpoints': endpoints.toMap(),
      'extendedNetworkBlocks': ?extendedNetworkBlocks,
      'externalCloudLinks': externalCloudLinks,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'identitySources': ?identitySources == null ? null : pulumi.Input.encodeList<IdentitySourceResponse, Map<String, dynamic>>(identitySources!, (value) => value.toMap()),
      'internet': ?internet,
      'location': location,
      'managementCluster': managementCluster.toMap(),
      'managementNetwork': managementNetwork,
      'name': name,
      'networkBlock': networkBlock,
      'nsxPublicIpQuotaRaised': nsxPublicIpQuotaRaised,
      'nsxtCertificateThumbprint': nsxtCertificateThumbprint,
      'nsxtPassword': ?nsxtPassword,
      'provisioningNetwork': provisioningNetwork,
      'provisioningState': provisioningState,
      'secondaryCircuit': ?secondaryCircuit == null ? null : secondaryCircuit!.toMap(),
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vcenterCertificateThumbprint': vcenterCertificateThumbprint,
      'vcenterPassword': ?vcenterPassword,
      'virtualNetworkId': ?virtualNetworkId,
      'vmotionNetwork': vmotionNetwork,
    };
  }

  factory GetPrivateCloudResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudResult(
      availability: map['availability'] == null ? null : AvailabilityPropertiesResponse.fromMap((map['availability']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      circuit: map['circuit'] == null ? null : CircuitResponse.fromMap((map['circuit']! as Map).cast<String, dynamic>()),
      dnsZoneType: map['dnsZoneType'] == null ? null : map['dnsZoneType']! as String,
      encryption: map['encryption'] == null ? null : EncryptionResponse.fromMap((map['encryption']! as Map).cast<String, dynamic>()),
      endpoints: EndpointsResponse.fromMap((map['endpoints'] as Map).cast<String, dynamic>()),
      extendedNetworkBlocks: map['extendedNetworkBlocks'] == null ? null : (map['extendedNetworkBlocks']! as List).cast<String>(),
      externalCloudLinks: (map['externalCloudLinks'] as List).cast<String>(),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : SystemAssignedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      identitySources: map['identitySources'] == null ? null : pulumi.Input.decodeList<IdentitySourceResponse>(map['identitySources']!, (value) => IdentitySourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      internet: map['internet'] == null ? null : map['internet']! as String,
      location: map['location'] as String,
      managementCluster: ManagementClusterResponse.fromMap((map['managementCluster'] as Map).cast<String, dynamic>()),
      managementNetwork: map['managementNetwork'] as String,
      name: map['name'] as String,
      networkBlock: map['networkBlock'] as String,
      nsxPublicIpQuotaRaised: map['nsxPublicIpQuotaRaised'] as String,
      nsxtCertificateThumbprint: map['nsxtCertificateThumbprint'] as String,
      nsxtPassword: map['nsxtPassword'] == null ? null : map['nsxtPassword']! as String,
      provisioningNetwork: map['provisioningNetwork'] as String,
      provisioningState: map['provisioningState'] as String,
      secondaryCircuit: map['secondaryCircuit'] == null ? null : CircuitResponse.fromMap((map['secondaryCircuit']! as Map).cast<String, dynamic>()),
      sku: SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      vcenterCertificateThumbprint: map['vcenterCertificateThumbprint'] as String,
      vcenterPassword: map['vcenterPassword'] == null ? null : map['vcenterPassword']! as String,
      virtualNetworkId: map['virtualNetworkId'] == null ? null : map['virtualNetworkId']! as String,
      vmotionNetwork: map['vmotionNetwork'] as String,
    );
  }
}

