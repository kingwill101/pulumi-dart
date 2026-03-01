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
    List<AcceptedAudiences>? acceptedAudiences,
    List<String>? allowedFqdnList,
    List<String>? allowedIpRangeList,
    List<CalloutPolicy>? calloutPolicies,
    String? clusterName,
    bool? enableAutoStop,
    bool? enableDiskEncryption,
    bool? enableDoubleEncryption,
    bool? enablePurge,
    bool? enableStreamingIngest,
    String? engineType,
    Identity? identity,
    KeyVaultProperties? keyVaultProperties,
    LanguageExtensionsList? languageExtensions,
    String? location,
    OptimizedAutoscale? optimizedAutoscale,
    String? publicIPType,
    String? publicNetworkAccess,
    required String resourceGroupName,
    String? restrictOutboundNetworkAccess,
    required AzureSku sku,
    Map<String, String>? tags,
    List<TrustedExternalTenant>? trustedExternalTenants,
    String? virtualClusterGraduationProperties,
    VirtualNetworkConfiguration? virtualNetworkConfiguration,
    List<String>? zones,
  }) :
      acceptedAudiences = pulumi.Input.asOptionalInput<List<AcceptedAudiences>>(acceptedAudiences),
      allowedFqdnList = pulumi.Input.asOptionalInput<List<String>>(allowedFqdnList),
      allowedIpRangeList = pulumi.Input.asOptionalInput<List<String>>(allowedIpRangeList),
      calloutPolicies = pulumi.Input.asOptionalInput<List<CalloutPolicy>>(calloutPolicies),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      enableAutoStop = pulumi.Input.asOptionalInput<bool>(enableAutoStop),
      enableDiskEncryption = pulumi.Input.asOptionalInput<bool>(enableDiskEncryption),
      enableDoubleEncryption = pulumi.Input.asOptionalInput<bool>(enableDoubleEncryption),
      enablePurge = pulumi.Input.asOptionalInput<bool>(enablePurge),
      enableStreamingIngest = pulumi.Input.asOptionalInput<bool>(enableStreamingIngest),
      engineType = pulumi.Input.asOptionalInput<String>(engineType),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      keyVaultProperties = pulumi.Input.asOptionalInput<KeyVaultProperties>(keyVaultProperties),
      languageExtensions = pulumi.Input.asOptionalInput<LanguageExtensionsList>(languageExtensions),
      location = pulumi.Input.asOptionalInput<String>(location),
      optimizedAutoscale = pulumi.Input.asOptionalInput<OptimizedAutoscale>(optimizedAutoscale),
      publicIPType = pulumi.Input.asOptionalInput<String>(publicIPType),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restrictOutboundNetworkAccess = pulumi.Input.asOptionalInput<String>(restrictOutboundNetworkAccess),
      sku = pulumi.Input.asInput<AzureSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trustedExternalTenants = pulumi.Input.asOptionalInput<List<TrustedExternalTenant>>(trustedExternalTenants),
      virtualClusterGraduationProperties = pulumi.Input.asOptionalInput<String>(virtualClusterGraduationProperties),
      virtualNetworkConfiguration = pulumi.Input.asOptionalInput<VirtualNetworkConfiguration>(virtualNetworkConfiguration),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      acceptedAudiences: map['acceptedAudiences'] == null ? null : pulumi.Input.decodeList<AcceptedAudiences>(map['acceptedAudiences'], (value) => AcceptedAudiences.fromMap((value as Map).cast<String, dynamic>())),
      allowedFqdnList: map['allowedFqdnList'] == null ? null : (map['allowedFqdnList'] as List).cast<String>(),
      allowedIpRangeList: map['allowedIpRangeList'] == null ? null : (map['allowedIpRangeList'] as List).cast<String>(),
      calloutPolicies: map['calloutPolicies'] == null ? null : pulumi.Input.decodeList<CalloutPolicy>(map['calloutPolicies'], (value) => CalloutPolicy.fromMap((value as Map).cast<String, dynamic>())),
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      enableAutoStop: map['enableAutoStop'] == null ? null : map['enableAutoStop'] as bool,
      enableDiskEncryption: map['enableDiskEncryption'] == null ? null : map['enableDiskEncryption'] as bool,
      enableDoubleEncryption: map['enableDoubleEncryption'] == null ? null : map['enableDoubleEncryption'] as bool,
      enablePurge: map['enablePurge'] == null ? null : map['enablePurge'] as bool,
      enableStreamingIngest: map['enableStreamingIngest'] == null ? null : map['enableStreamingIngest'] as bool,
      engineType: map['engineType'] == null ? null : map['engineType'] as String,
      identity: map['identity'] == null ? null : Identity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
      languageExtensions: map['languageExtensions'] == null ? null : LanguageExtensionsList.fromMap((map['languageExtensions'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      optimizedAutoscale: map['optimizedAutoscale'] == null ? null : OptimizedAutoscale.fromMap((map['optimizedAutoscale'] as Map).cast<String, dynamic>()),
      publicIPType: map['publicIPType'] == null ? null : map['publicIPType'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      restrictOutboundNetworkAccess: map['restrictOutboundNetworkAccess'] == null ? null : map['restrictOutboundNetworkAccess'] as String,
      sku: AzureSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      trustedExternalTenants: map['trustedExternalTenants'] == null ? null : pulumi.Input.decodeList<TrustedExternalTenant>(map['trustedExternalTenants'], (value) => TrustedExternalTenant.fromMap((value as Map).cast<String, dynamic>())),
      virtualClusterGraduationProperties: map['virtualClusterGraduationProperties'] == null ? null : map['virtualClusterGraduationProperties'] as String,
      virtualNetworkConfiguration: map['virtualNetworkConfiguration'] == null ? null : VirtualNetworkConfiguration.fromMap((map['virtualNetworkConfiguration'] as Map).cast<String, dynamic>()),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

