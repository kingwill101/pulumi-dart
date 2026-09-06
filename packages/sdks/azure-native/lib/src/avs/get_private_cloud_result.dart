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
  final String? azureApiVersion;
  /// An ExpressRoute Circuit
  final CircuitResponse? circuit;
  /// The type of DNS zone to use.
  final String? dnsZoneType;
  /// Customer managed key encryption, can be enabled or disabled
  final EncryptionResponse? encryption;
  /// The endpoints
  final EndpointsResponse? endpoints;
  /// Array of additional networks noncontiguous with networkBlock. Networks must be
  /// unique and non-overlapping across VNet in your subscription, on-premise, and
  /// this privateCloud networkBlock attribute. Make sure the CIDR format conforms to
  /// (A.B.C.D/X).
  final List<String>? extendedNetworkBlocks;
  /// Array of cloud link IDs from other clouds that connect to this one
  final List<String>? externalCloudLinks;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identities assigned to this resource.
  final SystemAssignedServiceIdentityResponse? identity;
  /// vCenter Single Sign On Identity Sources
  final List<IdentitySourceResponse>? identitySources;
  /// Connectivity to internet is enabled or disabled
  final String? internet;
  /// The geo-location where the resource lives
  final String? location;
  /// The default cluster used for management
  final ManagementClusterResponse? managementCluster;
  /// Network used to access vCenter Server and NSX-T Manager
  final String? managementNetwork;
  /// The name of the resource
  final String? name;
  /// The block of addresses should be unique across VNet in your subscription as
  /// well as on-premise. Make sure the CIDR format is conformed to (A.B.C.D/X) where
  /// A,B,C,D are between 0 and 255, and X is between 0 and 22
  final String? networkBlock;
  /// Flag to indicate whether the private cloud has the quota for provisioned NSX
  /// Public IP count raised from 64 to 1024
  final String? nsxPublicIpQuotaRaised;
  /// Thumbprint of the NSX-T Manager SSL certificate
  final String? nsxtCertificateThumbprint;
  /// Optionally, set the NSX-T Manager password when the private cloud is created
  final String? nsxtPassword;
  /// Used for virtual machine cold migration, cloning, and snapshot migration
  final String? provisioningNetwork;
  /// The provisioning state
  final String? provisioningState;
  /// A secondary expressRoute circuit from a separate AZ. Only present in a
  /// stretched private cloud
  final CircuitResponse? secondaryCircuit;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Thumbprint of the vCenter Server SSL certificate
  final String? vcenterCertificateThumbprint;
  /// Optionally, set the vCenter admin password when the private cloud is created
  final String? vcenterPassword;
  /// Azure resource ID of the virtual network
  final String? virtualNetworkId;
  /// Used for live migration of virtual machines
  final String? vmotionNetwork;

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
    this.azureApiVersion,
    this.circuit,
    this.dnsZoneType,
    this.encryption,
    this.endpoints,
    this.extendedNetworkBlocks,
    this.externalCloudLinks,
    this.id,
    this.identity,
    this.identitySources,
    String? internet,
    this.location,
    this.managementCluster,
    this.managementNetwork,
    this.name,
    this.networkBlock,
    this.nsxPublicIpQuotaRaised,
    this.nsxtCertificateThumbprint,
    this.nsxtPassword,
    this.provisioningNetwork,
    this.provisioningState,
    this.secondaryCircuit,
    this.sku,
    this.systemData,
    this.tags,
    this.type,
    this.vcenterCertificateThumbprint,
    this.vcenterPassword,
    this.virtualNetworkId,
    this.vmotionNetwork,
  }) : internet = internet ?? 'Disabled';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availability': ?availability?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'circuit': ?circuit?.toMap(),
      'dnsZoneType': ?dnsZoneType,
      'encryption': ?encryption?.toMap(),
      'endpoints': ?endpoints?.toMap(),
      'extendedNetworkBlocks': ?extendedNetworkBlocks,
      'externalCloudLinks': ?externalCloudLinks,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'identitySources': ?(() { final guardedValue = identitySources; if (guardedValue == null) return null; return pulumi.Input.encodeList<IdentitySourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'internet': ?internet,
      'location': ?location,
      'managementCluster': ?managementCluster?.toMap(),
      'managementNetwork': ?managementNetwork,
      'name': ?name,
      'networkBlock': ?networkBlock,
      'nsxPublicIpQuotaRaised': ?nsxPublicIpQuotaRaised,
      'nsxtCertificateThumbprint': ?nsxtCertificateThumbprint,
      'nsxtPassword': ?nsxtPassword,
      'provisioningNetwork': ?provisioningNetwork,
      'provisioningState': ?provisioningState,
      'secondaryCircuit': ?secondaryCircuit?.toMap(),
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'vcenterCertificateThumbprint': ?vcenterCertificateThumbprint,
      'vcenterPassword': ?vcenterPassword,
      'virtualNetworkId': ?virtualNetworkId,
      'vmotionNetwork': ?vmotionNetwork,
    };
  }

  factory GetPrivateCloudResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudResult(
      availability: (() { final guardedValue = map['availability']; if (guardedValue == null) return null; return AvailabilityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      circuit: (() { final guardedValue = map['circuit']; if (guardedValue == null) return null; return CircuitResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dnsZoneType: (() { final guardedValue = map['dnsZoneType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return EndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      extendedNetworkBlocks: (() { final guardedValue = map['extendedNetworkBlocks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      externalCloudLinks: (() { final guardedValue = map['externalCloudLinks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return SystemAssignedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      identitySources: (() { final guardedValue = map['identitySources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IdentitySourceResponse>(guardedValue, (value) => IdentitySourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      internet: (() { final guardedValue = map['internet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementCluster: (() { final guardedValue = map['managementCluster']; if (guardedValue == null) return null; return ManagementClusterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      managementNetwork: (() { final guardedValue = map['managementNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkBlock: (() { final guardedValue = map['networkBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nsxPublicIpQuotaRaised: (() { final guardedValue = map['nsxPublicIpQuotaRaised']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nsxtCertificateThumbprint: (() { final guardedValue = map['nsxtCertificateThumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nsxtPassword: (() { final guardedValue = map['nsxtPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningNetwork: (() { final guardedValue = map['provisioningNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryCircuit: (() { final guardedValue = map['secondaryCircuit']; if (guardedValue == null) return null; return CircuitResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vcenterCertificateThumbprint: (() { final guardedValue = map['vcenterCertificateThumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vcenterPassword: (() { final guardedValue = map['vcenterPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmotionNetwork: (() { final guardedValue = map['vmotionNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
