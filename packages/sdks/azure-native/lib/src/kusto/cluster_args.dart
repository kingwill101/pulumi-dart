// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accepted_audiences.dart';
import 'azure_sku.dart';
import 'callout_policy.dart';
import 'identity.dart';
import 'key_vault_properties.dart';
import 'language_extensions_list.dart';
import 'optimized_autoscale.dart';
import 'trusted_external_tenant.dart';
import 'virtual_network_configuration.dart';

/// {@template pulumi_kusto_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_kusto_cluster_args_doc}
class ClusterArgs {
  /// The cluster's accepted audiences.
  final pulumi.Input<List<AcceptedAudiences>>? acceptedAudiences;
  /// List of allowed FQDNs(Fully Qualified Domain Name) for egress from Cluster.
  final pulumi.Input<List<String>>? allowedFqdnList;
  /// The list of ips in the format of CIDR allowed to connect to the cluster.
  final pulumi.Input<List<String>>? allowedIpRangeList;
  /// List of callout policies for egress from Cluster.
  final pulumi.Input<List<CalloutPolicy>>? calloutPolicies;
  /// The name of the Kusto cluster.
  final pulumi.Input<String>? clusterName;
  /// A boolean value that indicates if the cluster could be automatically stopped (due to lack of data or no activity for many days).
  final pulumi.Input<bool>? enableAutoStop;
  /// A boolean value that indicates if the cluster's disks are encrypted.
  final pulumi.Input<bool>? enableDiskEncryption;
  /// A boolean value that indicates if double encryption is enabled.
  final pulumi.Input<bool>? enableDoubleEncryption;
  /// A boolean value that indicates if the purge operations are enabled.
  final pulumi.Input<bool>? enablePurge;
  /// A boolean value that indicates if the streaming ingest is enabled.
  final pulumi.Input<bool>? enableStreamingIngest;
  /// The engine type
  final pulumi.Input<String>? engineType;
  /// The identity of the cluster, if configured.
  final pulumi.Input<Identity>? identity;
  /// KeyVault properties for the cluster encryption.
  final pulumi.Input<KeyVaultProperties>? keyVaultProperties;
  /// List of the cluster's language extensions.
  final pulumi.Input<LanguageExtensionsList>? languageExtensions;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Optimized auto scale definition.
  final pulumi.Input<OptimizedAutoscale>? optimizedAutoscale;
  /// Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6)
  final pulumi.Input<String>? publicIPType;
  /// Public network access to the cluster is enabled by default. When disabled, only private endpoint connection to the cluster is allowed
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Whether or not to restrict outbound network access.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final pulumi.Input<String>? restrictOutboundNetworkAccess;
  /// The SKU of the cluster.
  final pulumi.Input<AzureSku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The cluster's external tenants.
  final pulumi.Input<List<TrustedExternalTenant>>? trustedExternalTenants;
  /// Virtual Cluster graduation properties
  final pulumi.Input<String>? virtualClusterGraduationProperties;
  /// Virtual network definition.
  final pulumi.Input<VirtualNetworkConfiguration>? virtualNetworkConfiguration;
  /// The availability zones of the cluster.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ClusterArgs].
  /// [acceptedAudiences] The cluster's accepted audiences.
  /// [allowedFqdnList] List of allowed FQDNs(Fully Qualified Domain Name) for egress from Cluster.
  /// [allowedIpRangeList] The list of ips in the format of CIDR allowed to connect to the cluster.
  /// [calloutPolicies] List of callout policies for egress from Cluster.
  /// [clusterName] The name of the Kusto cluster.
  /// [enableAutoStop] A boolean value that indicates if the cluster could be automatically stopped (due to lack of data or no activity for many days).
  /// [enableDiskEncryption] A boolean value that indicates if the cluster's disks are encrypted.
  /// [enableDoubleEncryption] A boolean value that indicates if double encryption is enabled.
  /// [enablePurge] A boolean value that indicates if the purge operations are enabled.
  /// [enableStreamingIngest] A boolean value that indicates if the streaming ingest is enabled.
  /// [engineType] The engine type
  /// [identity] The identity of the cluster, if configured.
  /// [keyVaultProperties] KeyVault properties for the cluster encryption.
  /// [languageExtensions] List of the cluster's language extensions.
  /// [location] The geo-location where the resource lives
  /// [optimizedAutoscale] Optimized auto scale definition.
  /// [publicIPType] Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6)
  /// [publicNetworkAccess] Public network access to the cluster is enabled by default. When disabled, only private endpoint connection to the cluster is allowed
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restrictOutboundNetworkAccess] Whether or not to restrict outbound network access.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  /// [sku] The SKU of the cluster.
  /// [tags] Resource tags.
  /// [trustedExternalTenants] The cluster's external tenants.
  /// [virtualClusterGraduationProperties] Virtual Cluster graduation properties
  /// [virtualNetworkConfiguration] Virtual network definition.
  /// [zones] The availability zones of the cluster.
  ClusterArgs({
    this.acceptedAudiences,
    this.allowedFqdnList,
    this.allowedIpRangeList,
    this.calloutPolicies,
    this.clusterName,
    this.enableAutoStop,
    this.enableDiskEncryption,
    this.enableDoubleEncryption,
    this.enablePurge,
    this.enableStreamingIngest,
    this.engineType,
    this.identity,
    this.keyVaultProperties,
    this.languageExtensions,
    this.location,
    this.optimizedAutoscale,
    this.publicIPType,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.restrictOutboundNetworkAccess,
    required this.sku,
    this.tags,
    this.trustedExternalTenants,
    this.virtualClusterGraduationProperties,
    this.virtualNetworkConfiguration,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedAudiences': ?pulumi.Input.mapOptionalInputValue<List<AcceptedAudiences>, List<Map<String, dynamic>>>(acceptedAudiences, (value) => pulumi.Input.encodeList<AcceptedAudiences, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allowedFqdnList': ?allowedFqdnList,
      'allowedIpRangeList': ?allowedIpRangeList,
      'calloutPolicies': ?pulumi.Input.mapOptionalInputValue<List<CalloutPolicy>, List<Map<String, dynamic>>>(calloutPolicies, (value) => pulumi.Input.encodeList<CalloutPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterName': ?clusterName,
      'enableAutoStop': ?enableAutoStop,
      'enableDiskEncryption': ?enableDiskEncryption,
      'enableDoubleEncryption': ?enableDoubleEncryption,
      'enablePurge': ?enablePurge,
      'enableStreamingIngest': ?enableStreamingIngest,
      'engineType': ?engineType,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'languageExtensions': ?pulumi.Input.mapOptionalInputValue<LanguageExtensionsList, Map<String, dynamic>>(languageExtensions, (value) => value.toMap()),
      'location': ?location,
      'optimizedAutoscale': ?pulumi.Input.mapOptionalInputValue<OptimizedAutoscale, Map<String, dynamic>>(optimizedAutoscale, (value) => value.toMap()),
      'publicIPType': ?publicIPType,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'sku': pulumi.Input.mapInputValue<AzureSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'trustedExternalTenants': ?pulumi.Input.mapOptionalInputValue<List<TrustedExternalTenant>, List<Map<String, dynamic>>>(trustedExternalTenants, (value) => pulumi.Input.encodeList<TrustedExternalTenant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualClusterGraduationProperties': ?virtualClusterGraduationProperties,
      'virtualNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkConfiguration, Map<String, dynamic>>(virtualNetworkConfiguration, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      acceptedAudiences: (() { final guardedValue = map['acceptedAudiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AcceptedAudiences>(guardedValue, (value) => AcceptedAudiences.fromMap((value as Map).cast<String, dynamic>()))); })(),
      allowedFqdnList: (() { final guardedValue = map['allowedFqdnList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedIpRangeList: (() { final guardedValue = map['allowedIpRangeList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      calloutPolicies: (() { final guardedValue = map['calloutPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CalloutPolicy>(guardedValue, (value) => CalloutPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAutoStop: (() { final guardedValue = map['enableAutoStop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDiskEncryption: (() { final guardedValue = map['enableDiskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDoubleEncryption: (() { final guardedValue = map['enableDoubleEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePurge: (() { final guardedValue = map['enablePurge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableStreamingIngest: (() { final guardedValue = map['enableStreamingIngest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engineType: (() { final guardedValue = map['engineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageExtensions: (() { final guardedValue = map['languageExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LanguageExtensionsList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optimizedAutoscale: (() { final guardedValue = map['optimizedAutoscale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OptimizedAutoscale.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicIPType: (() { final guardedValue = map['publicIPType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restrictOutboundNetworkAccess: (() { final guardedValue = map['restrictOutboundNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: pulumi.Input.fromValue(AzureSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trustedExternalTenants: (() { final guardedValue = map['trustedExternalTenants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrustedExternalTenant>(guardedValue, (value) => TrustedExternalTenant.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualClusterGraduationProperties: (() { final guardedValue = map['virtualClusterGraduationProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkConfiguration: (() { final guardedValue = map['virtualNetworkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

