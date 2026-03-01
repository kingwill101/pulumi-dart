// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interactive_query_cluster_component_version.dart';
import 'interactive_query_cluster_compute_isolation.dart';
import 'interactive_query_cluster_disk_encryption.dart';
import 'interactive_query_cluster_extension.dart';
import 'interactive_query_cluster_gateway.dart';
import 'interactive_query_cluster_metastores.dart';
import 'interactive_query_cluster_monitor.dart';
import 'interactive_query_cluster_network.dart';
import 'interactive_query_cluster_private_link_configuration.dart';
import 'interactive_query_cluster_roles.dart';
import 'interactive_query_cluster_security_profile.dart';
import 'interactive_query_cluster_storage_account.dart';
import 'interactive_query_cluster_storage_account_gen2.dart';

/// {@template pulumi_hdinsight_interactive_query_cluster_interactive_query_cluster_args_doc}
/// The set of arguments for InteractiveQueryCluster.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_interactive_query_cluster_interactive_query_cluster_args_doc}
class InteractiveQueryClusterArgs {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterVersion;
  /// A `component_version` block as defined below.
  final pulumi.Input<InteractiveQueryClusterComponentVersion> componentVersion;
  /// A `compute_isolation` block as defined below.
  final pulumi.Input<InteractiveQueryClusterComputeIsolation>? computeIsolation;
  /// A `disk_encryption` block as defined below.
  final pulumi.Input<List<InteractiveQueryClusterDiskEncryption>>? diskEncryptions;
  /// Whether encryption in transit is enabled for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? encryptionInTransitEnabled;
  /// An `extension` block as defined below.
  final pulumi.Input<InteractiveQueryClusterExtension>? extension;
  /// A `gateway` block as defined below.
  final pulumi.Input<InteractiveQueryClusterGateway> gateway;
  /// Specifies the Azure Region which this HDInsight Interactive Query Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `metastores` block as defined below.
  final pulumi.Input<InteractiveQueryClusterMetastores>? metastores;
  /// A `monitor` block as defined below.
  final pulumi.Input<InteractiveQueryClusterMonitor>? monitor;
  /// Specifies the name for this HDInsight Interactive Query Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network` block as defined below.
  final pulumi.Input<InteractiveQueryClusterNetwork>? network;
  /// A `private_link_configuration` block as defined below.
  final pulumi.Input<InteractiveQueryClusterPrivateLinkConfiguration>? privateLinkConfiguration;
  /// Specifies the name of the Resource Group in which this HDInsight Interactive Query Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `roles` block as defined below.
  final pulumi.Input<InteractiveQueryClusterRoles> roles;
  /// A `security_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<InteractiveQueryClusterSecurityProfile>? securityProfile;
  /// A `storage_account_gen2` block as defined below.
  final pulumi.Input<InteractiveQueryClusterStorageAccountGen2>? storageAccountGen2;
  /// One or more `storage_account` block as defined below.
  final pulumi.Input<List<InteractiveQueryClusterStorageAccount>>? storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight Interactive Query Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Tier which should be used for this HDInsight Interactive Query Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String> tier;
  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  final pulumi.Input<String>? tlsMinVersion;

  /// Creates a new [InteractiveQueryClusterArgs].
  /// [clusterVersion] Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  /// [componentVersion] A `component_version` block as defined below.
  /// [computeIsolation] A `compute_isolation` block as defined below.
  /// [diskEncryptions] A `disk_encryption` block as defined below.
  /// [encryptionInTransitEnabled] Whether encryption in transit is enabled for this Cluster. Changing this forces a new resource to be created.
  /// [extension] An `extension` block as defined below.
  /// [gateway] A `gateway` block as defined below.
  /// [location] Specifies the Azure Region which this HDInsight Interactive Query Cluster should exist. Changing this forces a new resource to be created.
  /// [metastores] A `metastores` block as defined below.
  /// [monitor] A `monitor` block as defined below.
  /// [name] Specifies the name for this HDInsight Interactive Query Cluster. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below.
  /// [privateLinkConfiguration] A `private_link_configuration` block as defined below.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight Interactive Query Cluster should exist. Changing this forces a new resource to be created.
  /// [roles] A `roles` block as defined below.
  /// [securityProfile] A `security_profile` block as defined below. Changing this forces a new resource to be created.
  /// [storageAccountGen2] A `storage_account_gen2` block as defined below.
  /// [storageAccounts] One or more `storage_account` block as defined below.
  /// [tags] A map of Tags which should be assigned to this HDInsight Interactive Query Cluster.
  /// [tier] Specifies the Tier which should be used for this HDInsight Interactive Query Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  /// [tlsMinVersion] The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  InteractiveQueryClusterArgs({
    required String clusterVersion,
    required InteractiveQueryClusterComponentVersion componentVersion,
    InteractiveQueryClusterComputeIsolation? computeIsolation,
    List<InteractiveQueryClusterDiskEncryption>? diskEncryptions,
    bool? encryptionInTransitEnabled,
    InteractiveQueryClusterExtension? extension,
    required InteractiveQueryClusterGateway gateway,
    String? location,
    InteractiveQueryClusterMetastores? metastores,
    InteractiveQueryClusterMonitor? monitor,
    String? name,
    InteractiveQueryClusterNetwork? network,
    InteractiveQueryClusterPrivateLinkConfiguration? privateLinkConfiguration,
    required String resourceGroupName,
    required InteractiveQueryClusterRoles roles,
    InteractiveQueryClusterSecurityProfile? securityProfile,
    InteractiveQueryClusterStorageAccountGen2? storageAccountGen2,
    List<InteractiveQueryClusterStorageAccount>? storageAccounts,
    Map<String, String>? tags,
    required String tier,
    String? tlsMinVersion,
  }) :
      clusterVersion = pulumi.Input.asInput<String>(clusterVersion),
      componentVersion = pulumi.Input.asInput<InteractiveQueryClusterComponentVersion>(componentVersion),
      computeIsolation = pulumi.Input.asOptionalInput<InteractiveQueryClusterComputeIsolation>(computeIsolation),
      diskEncryptions = pulumi.Input.asOptionalInput<List<InteractiveQueryClusterDiskEncryption>>(diskEncryptions),
      encryptionInTransitEnabled = pulumi.Input.asOptionalInput<bool>(encryptionInTransitEnabled),
      extension = pulumi.Input.asOptionalInput<InteractiveQueryClusterExtension>(extension),
      gateway = pulumi.Input.asInput<InteractiveQueryClusterGateway>(gateway),
      location = pulumi.Input.asOptionalInput<String>(location),
      metastores = pulumi.Input.asOptionalInput<InteractiveQueryClusterMetastores>(metastores),
      monitor = pulumi.Input.asOptionalInput<InteractiveQueryClusterMonitor>(monitor),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<InteractiveQueryClusterNetwork>(network),
      privateLinkConfiguration = pulumi.Input.asOptionalInput<InteractiveQueryClusterPrivateLinkConfiguration>(privateLinkConfiguration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roles = pulumi.Input.asInput<InteractiveQueryClusterRoles>(roles),
      securityProfile = pulumi.Input.asOptionalInput<InteractiveQueryClusterSecurityProfile>(securityProfile),
      storageAccountGen2 = pulumi.Input.asOptionalInput<InteractiveQueryClusterStorageAccountGen2>(storageAccountGen2),
      storageAccounts = pulumi.Input.asOptionalInput<List<InteractiveQueryClusterStorageAccount>>(storageAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tier = pulumi.Input.asInput<String>(tier),
      tlsMinVersion = pulumi.Input.asOptionalInput<String>(tlsMinVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterVersion': clusterVersion,
      'componentVersion': pulumi.Input.mapInputValue<InteractiveQueryClusterComponentVersion, Map<String, dynamic>>(componentVersion, (value) => value.toMap()),
      'computeIsolation': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryClusterComputeIsolation, Map<String, dynamic>>(computeIsolation, (value) => value.toMap()),
      'diskEncryptions': ?pulumi.Input.mapOptionalInputValue<List<InteractiveQueryClusterDiskEncryption>, List<Map<String, dynamic>>>(diskEncryptions, (value) => pulumi.Input.encodeList<InteractiveQueryClusterDiskEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionInTransitEnabled': ?encryptionInTransitEnabled,
      'extension': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryClusterExtension, Map<String, dynamic>>(extension, (value) => value.toMap()),
      'gateway': pulumi.Input.mapInputValue<InteractiveQueryClusterGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'location': ?location,
      'metastores': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryClusterMetastores, Map<String, dynamic>>(metastores, (value) => value.toMap()),
      'monitor': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryClusterMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'privateLinkConfiguration': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryClusterPrivateLinkConfiguration, Map<String, dynamic>>(privateLinkConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'roles': pulumi.Input.mapInputValue<InteractiveQueryClusterRoles, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryClusterSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageAccountGen2': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryClusterStorageAccountGen2, Map<String, dynamic>>(storageAccountGen2, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<InteractiveQueryClusterStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<InteractiveQueryClusterStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tier': tier,
      'tlsMinVersion': ?tlsMinVersion,
    };
  }

  factory InteractiveQueryClusterArgs.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterArgs(
      clusterVersion: map['clusterVersion'] as String,
      componentVersion: InteractiveQueryClusterComponentVersion.fromMap((map['componentVersion'] as Map).cast<String, dynamic>()),
      computeIsolation: map['computeIsolation'] == null ? null : InteractiveQueryClusterComputeIsolation.fromMap((map['computeIsolation'] as Map).cast<String, dynamic>()),
      diskEncryptions: map['diskEncryptions'] == null ? null : pulumi.Input.decodeList<InteractiveQueryClusterDiskEncryption>(map['diskEncryptions'], (value) => InteractiveQueryClusterDiskEncryption.fromMap((value as Map).cast<String, dynamic>())),
      encryptionInTransitEnabled: map['encryptionInTransitEnabled'] == null ? null : map['encryptionInTransitEnabled'] as bool,
      extension: map['extension'] == null ? null : InteractiveQueryClusterExtension.fromMap((map['extension'] as Map).cast<String, dynamic>()),
      gateway: InteractiveQueryClusterGateway.fromMap((map['gateway'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      metastores: map['metastores'] == null ? null : InteractiveQueryClusterMetastores.fromMap((map['metastores'] as Map).cast<String, dynamic>()),
      monitor: map['monitor'] == null ? null : InteractiveQueryClusterMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : InteractiveQueryClusterNetwork.fromMap((map['network'] as Map).cast<String, dynamic>()),
      privateLinkConfiguration: map['privateLinkConfiguration'] == null ? null : InteractiveQueryClusterPrivateLinkConfiguration.fromMap((map['privateLinkConfiguration'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      roles: InteractiveQueryClusterRoles.fromMap((map['roles'] as Map).cast<String, dynamic>()),
      securityProfile: map['securityProfile'] == null ? null : InteractiveQueryClusterSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageAccountGen2: map['storageAccountGen2'] == null ? null : InteractiveQueryClusterStorageAccountGen2.fromMap((map['storageAccountGen2'] as Map).cast<String, dynamic>()),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Input.decodeList<InteractiveQueryClusterStorageAccount>(map['storageAccounts'], (value) => InteractiveQueryClusterStorageAccount.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tier: map['tier'] as String,
      tlsMinVersion: map['tlsMinVersion'] == null ? null : map['tlsMinVersion'] as String,
    );
  }
}

