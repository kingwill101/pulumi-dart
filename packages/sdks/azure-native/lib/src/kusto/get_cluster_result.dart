// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accepted_audiences_response.dart';
import 'azure_sku_response.dart';
import 'callout_policy_response.dart';
import 'identity_response.dart';
import 'key_vault_properties_response.dart';
import 'language_extensions_list_response.dart';
import 'migration_cluster_properties_response.dart';
import 'optimized_autoscale_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';
import 'trusted_external_tenant_response.dart';
import 'virtual_network_configuration_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// The cluster's accepted audiences.
  final List<AcceptedAudiencesResponse>? acceptedAudiences;
  /// List of allowed FQDNs(Fully Qualified Domain Name) for egress from Cluster.
  final List<String>? allowedFqdnList;
  /// The list of ips in the format of CIDR allowed to connect to the cluster.
  final List<String>? allowedIpRangeList;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of callout policies for egress from Cluster.
  final List<CalloutPolicyResponse>? calloutPolicies;
  /// The cluster data ingestion URI.
  final String? dataIngestionUri;
  /// A boolean value that indicates if the cluster could be automatically stopped (due to lack of data or no activity for many days).
  final bool? enableAutoStop;
  /// A boolean value that indicates if the cluster's disks are encrypted.
  final bool? enableDiskEncryption;
  /// A boolean value that indicates if double encryption is enabled.
  final bool? enableDoubleEncryption;
  /// A boolean value that indicates if the purge operations are enabled.
  final bool? enablePurge;
  /// A boolean value that indicates if the streaming ingest is enabled.
  final bool? enableStreamingIngest;
  /// The engine type
  final String? engineType;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The identity of the cluster, if configured.
  final IdentityResponse? identity;
  /// KeyVault properties for the cluster encryption.
  final KeyVaultPropertiesResponse? keyVaultProperties;
  /// List of the cluster's language extensions.
  final LanguageExtensionsListResponse? languageExtensions;
  /// The geo-location where the resource lives
  final String? location;
  /// Properties of the peer cluster involved in a migration to/from this cluster.
  final MigrationClusterPropertiesResponse? migrationCluster;
  /// The name of the resource
  final String? name;
  /// Optimized auto scale definition.
  final OptimizedAutoscaleResponse? optimizedAutoscale;
  /// A list of private endpoint connections.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// The provisioned state of the resource.
  final String? provisioningState;
  /// Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6)
  final String? publicIPType;
  /// Public network access to the cluster is enabled by default. When disabled, only private endpoint connection to the cluster is allowed
  final String? publicNetworkAccess;
  /// Whether or not to restrict outbound network access.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final String? restrictOutboundNetworkAccess;
  /// The SKU of the cluster.
  final AzureSkuResponse? sku;
  /// The state of the resource.
  final String? state;
  /// The reason for the cluster's current state.
  final String? stateReason;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The cluster's external tenants.
  final List<TrustedExternalTenantResponse>? trustedExternalTenants;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The cluster URI.
  final String? uri;
  /// Virtual network definition.
  final VirtualNetworkConfigurationResponse? virtualNetworkConfiguration;
  /// Indicates whether the cluster is zonal or non-zonal.
  final String? zoneStatus;
  /// The availability zones of the cluster.
  final List<String>? zones;

  /// Creates a new [GetClusterResult].
  /// [acceptedAudiences] The cluster's accepted audiences.
  /// [allowedFqdnList] List of allowed FQDNs(Fully Qualified Domain Name) for egress from Cluster.
  /// [allowedIpRangeList] The list of ips in the format of CIDR allowed to connect to the cluster.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [calloutPolicies] List of callout policies for egress from Cluster.
  /// [dataIngestionUri] The cluster data ingestion URI.
  /// [enableAutoStop] A boolean value that indicates if the cluster could be automatically stopped (due to lack of data or no activity for many days).
  /// [enableDiskEncryption] A boolean value that indicates if the cluster's disks are encrypted.
  /// [enableDoubleEncryption] A boolean value that indicates if double encryption is enabled.
  /// [enablePurge] A boolean value that indicates if the purge operations are enabled.
  /// [enableStreamingIngest] A boolean value that indicates if the streaming ingest is enabled.
  /// [engineType] The engine type
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the cluster, if configured.
  /// [keyVaultProperties] KeyVault properties for the cluster encryption.
  /// [languageExtensions] List of the cluster's language extensions.
  /// [location] The geo-location where the resource lives
  /// [migrationCluster] Properties of the peer cluster involved in a migration to/from this cluster.
  /// [name] The name of the resource
  /// [optimizedAutoscale] Optimized auto scale definition.
  /// [privateEndpointConnections] A list of private endpoint connections.
  /// [provisioningState] The provisioned state of the resource.
  /// [publicIPType] Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6)
  /// [publicNetworkAccess] Public network access to the cluster is enabled by default. When disabled, only private endpoint connection to the cluster is allowed
  /// [restrictOutboundNetworkAccess] Whether or not to restrict outbound network access.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  /// [sku] The SKU of the cluster.
  /// [state] The state of the resource.
  /// [stateReason] The reason for the cluster's current state.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [trustedExternalTenants] The cluster's external tenants.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uri] The cluster URI.
  /// [virtualNetworkConfiguration] Virtual network definition.
  /// [zoneStatus] Indicates whether the cluster is zonal or non-zonal.
  /// [zones] The availability zones of the cluster.
  GetClusterResult({
    this.acceptedAudiences,
    this.allowedFqdnList,
    this.allowedIpRangeList,
    this.azureApiVersion,
    this.calloutPolicies,
    this.dataIngestionUri,
    bool? enableAutoStop,
    bool? enableDiskEncryption,
    bool? enableDoubleEncryption,
    bool? enablePurge,
    bool? enableStreamingIngest,
    String? engineType,
    this.etag,
    this.id,
    this.identity,
    this.keyVaultProperties,
    this.languageExtensions,
    this.location,
    this.migrationCluster,
    this.name,
    this.optimizedAutoscale,
    this.privateEndpointConnections,
    this.provisioningState,
    String? publicIPType,
    String? publicNetworkAccess,
    String? restrictOutboundNetworkAccess,
    this.sku,
    this.state,
    this.stateReason,
    this.systemData,
    this.tags,
    this.trustedExternalTenants,
    this.type,
    this.uri,
    this.virtualNetworkConfiguration,
    this.zoneStatus,
    this.zones,
  }) : enableAutoStop = enableAutoStop ?? true, enableDiskEncryption = enableDiskEncryption ?? false, enableDoubleEncryption = enableDoubleEncryption ?? false, enablePurge = enablePurge ?? false, enableStreamingIngest = enableStreamingIngest ?? false, engineType = engineType ?? 'V3', publicIPType = publicIPType ?? 'IPv4', publicNetworkAccess = publicNetworkAccess ?? 'Enabled', restrictOutboundNetworkAccess = restrictOutboundNetworkAccess ?? 'Disabled';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedAudiences': ?(() { final guardedValue = acceptedAudiences; if (guardedValue == null) return null; return pulumi.Input.encodeList<AcceptedAudiencesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'allowedFqdnList': ?allowedFqdnList,
      'allowedIpRangeList': ?allowedIpRangeList,
      'azureApiVersion': ?azureApiVersion,
      'calloutPolicies': ?(() { final guardedValue = calloutPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<CalloutPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataIngestionUri': ?dataIngestionUri,
      'enableAutoStop': ?enableAutoStop,
      'enableDiskEncryption': ?enableDiskEncryption,
      'enableDoubleEncryption': ?enableDoubleEncryption,
      'enablePurge': ?enablePurge,
      'enableStreamingIngest': ?enableStreamingIngest,
      'engineType': ?engineType,
      'etag': ?etag,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'keyVaultProperties': ?keyVaultProperties?.toMap(),
      'languageExtensions': ?languageExtensions?.toMap(),
      'location': ?location,
      'migrationCluster': ?migrationCluster?.toMap(),
      'name': ?name,
      'optimizedAutoscale': ?optimizedAutoscale?.toMap(),
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicIPType': ?publicIPType,
      'publicNetworkAccess': ?publicNetworkAccess,
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'sku': ?sku?.toMap(),
      'state': ?state,
      'stateReason': ?stateReason,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'trustedExternalTenants': ?(() { final guardedValue = trustedExternalTenants; if (guardedValue == null) return null; return pulumi.Input.encodeList<TrustedExternalTenantResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'uri': ?uri,
      'virtualNetworkConfiguration': ?virtualNetworkConfiguration?.toMap(),
      'zoneStatus': ?zoneStatus,
      'zones': ?zones,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      acceptedAudiences: (() { final guardedValue = map['acceptedAudiences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AcceptedAudiencesResponse>(guardedValue, (value) => AcceptedAudiencesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      allowedFqdnList: (() { final guardedValue = map['allowedFqdnList']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      allowedIpRangeList: (() { final guardedValue = map['allowedIpRangeList']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      calloutPolicies: (() { final guardedValue = map['calloutPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CalloutPolicyResponse>(guardedValue, (value) => CalloutPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataIngestionUri: (() { final guardedValue = map['dataIngestionUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableAutoStop: (() { final guardedValue = map['enableAutoStop']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableDiskEncryption: (() { final guardedValue = map['enableDiskEncryption']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableDoubleEncryption: (() { final guardedValue = map['enableDoubleEncryption']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePurge: (() { final guardedValue = map['enablePurge']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableStreamingIngest: (() { final guardedValue = map['enableStreamingIngest']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      engineType: (() { final guardedValue = map['engineType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      languageExtensions: (() { final guardedValue = map['languageExtensions']; if (guardedValue == null) return null; return LanguageExtensionsListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationCluster: (() { final guardedValue = map['migrationCluster']; if (guardedValue == null) return null; return MigrationClusterPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      optimizedAutoscale: (() { final guardedValue = map['optimizedAutoscale']; if (guardedValue == null) return null; return OptimizedAutoscaleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIPType: (() { final guardedValue = map['publicIPType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restrictOutboundNetworkAccess: (() { final guardedValue = map['restrictOutboundNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return AzureSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trustedExternalTenants: (() { final guardedValue = map['trustedExternalTenants']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustedExternalTenantResponse>(guardedValue, (value) => TrustedExternalTenantResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkConfiguration: (() { final guardedValue = map['virtualNetworkConfiguration']; if (guardedValue == null) return null; return VirtualNetworkConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zoneStatus: (() { final guardedValue = map['zoneStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
