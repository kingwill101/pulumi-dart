// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_cluster_component_version.dart';
import 'spark_cluster_compute_isolation.dart';
import 'spark_cluster_disk_encryption.dart';
import 'spark_cluster_extension.dart';
import 'spark_cluster_gateway.dart';
import 'spark_cluster_metastores.dart';
import 'spark_cluster_monitor.dart';
import 'spark_cluster_network.dart';
import 'spark_cluster_private_link_configuration.dart';
import 'spark_cluster_roles.dart';
import 'spark_cluster_security_profile.dart';
import 'spark_cluster_storage_account.dart';
import 'spark_cluster_storage_account_gen2.dart';

/// {@template pulumi_hdinsight_spark_cluster_spark_cluster_args_doc}
/// The set of arguments for SparkCluster.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_spark_cluster_spark_cluster_args_doc}
class SparkClusterArgs {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterVersion;
  /// A `component_version` block as defined below.
  final pulumi.Input<SparkClusterComponentVersion> componentVersion;
  /// A `compute_isolation` block as defined below.
  final pulumi.Input<SparkClusterComputeIsolation>? computeIsolation;
  /// One or more `disk_encryption` block as defined below.
  final pulumi.Input<List<SparkClusterDiskEncryption>>? diskEncryptions;
  /// Whether encryption in transit is enabled for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? encryptionInTransitEnabled;
  /// An `extension` block as defined below.
  final pulumi.Input<SparkClusterExtension>? extension;
  /// A `gateway` block as defined below.
  final pulumi.Input<SparkClusterGateway> gateway;
  /// Specifies the Azure Region which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `metastores` block as defined below.
  final pulumi.Input<SparkClusterMetastores>? metastores;
  /// A `monitor` block as defined below.
  final pulumi.Input<SparkClusterMonitor>? monitor;
  /// Specifies the name for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network` block as defined below.
  final pulumi.Input<SparkClusterNetwork>? network;
  /// A `private_link_configuration` block as defined below.
  final pulumi.Input<SparkClusterPrivateLinkConfiguration>? privateLinkConfiguration;
  /// Specifies the name of the Resource Group in which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `roles` block as defined below.
  final pulumi.Input<SparkClusterRoles> roles;
  /// A `security_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SparkClusterSecurityProfile>? securityProfile;
  /// A `storage_account_gen2` block as defined below.
  final pulumi.Input<SparkClusterStorageAccountGen2>? storageAccountGen2;
  /// One or more `storage_account` block as defined below.
  final pulumi.Input<List<SparkClusterStorageAccount>>? storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight Spark Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Tier which should be used for this HDInsight Spark Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String> tier;
  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  final pulumi.Input<String>? tlsMinVersion;
  /// A list of Availability Zones which should be used for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [SparkClusterArgs].
  /// [clusterVersion] Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  /// [componentVersion] A `component_version` block as defined below.
  /// [computeIsolation] A `compute_isolation` block as defined below.
  /// [diskEncryptions] One or more `disk_encryption` block as defined below.
  /// [encryptionInTransitEnabled] Whether encryption in transit is enabled for this Cluster. Changing this forces a new resource to be created.
  /// [extension] An `extension` block as defined below.
  /// [gateway] A `gateway` block as defined below.
  /// [location] Specifies the Azure Region which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created.
  /// [metastores] A `metastores` block as defined below.
  /// [monitor] A `monitor` block as defined below.
  /// [name] Specifies the name for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below.
  /// [privateLinkConfiguration] A `private_link_configuration` block as defined below.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created.
  /// [roles] A `roles` block as defined below.
  /// [securityProfile] A `security_profile` block as defined below. Changing this forces a new resource to be created.
  /// [storageAccountGen2] A `storage_account_gen2` block as defined below.
  /// [storageAccounts] One or more `storage_account` block as defined below.
  /// [tags] A map of Tags which should be assigned to this HDInsight Spark Cluster.
  /// [tier] Specifies the Tier which should be used for this HDInsight Spark Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  /// [tlsMinVersion] The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  /// [zones] A list of Availability Zones which should be used for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  SparkClusterArgs({
    required String clusterVersion,
    required SparkClusterComponentVersion componentVersion,
    SparkClusterComputeIsolation? computeIsolation,
    List<SparkClusterDiskEncryption>? diskEncryptions,
    bool? encryptionInTransitEnabled,
    SparkClusterExtension? extension,
    required SparkClusterGateway gateway,
    String? location,
    SparkClusterMetastores? metastores,
    SparkClusterMonitor? monitor,
    String? name,
    SparkClusterNetwork? network,
    SparkClusterPrivateLinkConfiguration? privateLinkConfiguration,
    required String resourceGroupName,
    required SparkClusterRoles roles,
    SparkClusterSecurityProfile? securityProfile,
    SparkClusterStorageAccountGen2? storageAccountGen2,
    List<SparkClusterStorageAccount>? storageAccounts,
    Map<String, String>? tags,
    required String tier,
    String? tlsMinVersion,
    List<String>? zones,
  }) :
      clusterVersion = pulumi.Input.asInput<String>(clusterVersion),
      componentVersion = pulumi.Input.asInput<SparkClusterComponentVersion>(componentVersion),
      computeIsolation = pulumi.Input.asOptionalInput<SparkClusterComputeIsolation>(computeIsolation),
      diskEncryptions = pulumi.Input.asOptionalInput<List<SparkClusterDiskEncryption>>(diskEncryptions),
      encryptionInTransitEnabled = pulumi.Input.asOptionalInput<bool>(encryptionInTransitEnabled),
      extension = pulumi.Input.asOptionalInput<SparkClusterExtension>(extension),
      gateway = pulumi.Input.asInput<SparkClusterGateway>(gateway),
      location = pulumi.Input.asOptionalInput<String>(location),
      metastores = pulumi.Input.asOptionalInput<SparkClusterMetastores>(metastores),
      monitor = pulumi.Input.asOptionalInput<SparkClusterMonitor>(monitor),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<SparkClusterNetwork>(network),
      privateLinkConfiguration = pulumi.Input.asOptionalInput<SparkClusterPrivateLinkConfiguration>(privateLinkConfiguration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roles = pulumi.Input.asInput<SparkClusterRoles>(roles),
      securityProfile = pulumi.Input.asOptionalInput<SparkClusterSecurityProfile>(securityProfile),
      storageAccountGen2 = pulumi.Input.asOptionalInput<SparkClusterStorageAccountGen2>(storageAccountGen2),
      storageAccounts = pulumi.Input.asOptionalInput<List<SparkClusterStorageAccount>>(storageAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tier = pulumi.Input.asInput<String>(tier),
      tlsMinVersion = pulumi.Input.asOptionalInput<String>(tlsMinVersion),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterVersion': clusterVersion,
      'componentVersion': pulumi.Input.mapInputValue<SparkClusterComponentVersion, Map<String, dynamic>>(componentVersion, (value) => value.toMap()),
      'computeIsolation': ?pulumi.Input.mapOptionalInputValue<SparkClusterComputeIsolation, Map<String, dynamic>>(computeIsolation, (value) => value.toMap()),
      'diskEncryptions': ?pulumi.Input.mapOptionalInputValue<List<SparkClusterDiskEncryption>, List<Map<String, dynamic>>>(diskEncryptions, (value) => pulumi.Input.encodeList<SparkClusterDiskEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionInTransitEnabled': ?encryptionInTransitEnabled,
      'extension': ?pulumi.Input.mapOptionalInputValue<SparkClusterExtension, Map<String, dynamic>>(extension, (value) => value.toMap()),
      'gateway': pulumi.Input.mapInputValue<SparkClusterGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'location': ?location,
      'metastores': ?pulumi.Input.mapOptionalInputValue<SparkClusterMetastores, Map<String, dynamic>>(metastores, (value) => value.toMap()),
      'monitor': ?pulumi.Input.mapOptionalInputValue<SparkClusterMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<SparkClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'privateLinkConfiguration': ?pulumi.Input.mapOptionalInputValue<SparkClusterPrivateLinkConfiguration, Map<String, dynamic>>(privateLinkConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'roles': pulumi.Input.mapInputValue<SparkClusterRoles, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<SparkClusterSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageAccountGen2': ?pulumi.Input.mapOptionalInputValue<SparkClusterStorageAccountGen2, Map<String, dynamic>>(storageAccountGen2, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<SparkClusterStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<SparkClusterStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tier': tier,
      'tlsMinVersion': ?tlsMinVersion,
      'zones': ?zones,
    };
  }

  factory SparkClusterArgs.fromMap(Map<String, dynamic> map) {
    return SparkClusterArgs(
      clusterVersion: map['clusterVersion'] as String,
      componentVersion: SparkClusterComponentVersion.fromMap((map['componentVersion'] as Map).cast<String, dynamic>()),
      computeIsolation: map['computeIsolation'] == null ? null : SparkClusterComputeIsolation.fromMap((map['computeIsolation'] as Map).cast<String, dynamic>()),
      diskEncryptions: map['diskEncryptions'] == null ? null : pulumi.Input.decodeList<SparkClusterDiskEncryption>(map['diskEncryptions'], (value) => SparkClusterDiskEncryption.fromMap((value as Map).cast<String, dynamic>())),
      encryptionInTransitEnabled: map['encryptionInTransitEnabled'] == null ? null : map['encryptionInTransitEnabled'] as bool,
      extension: map['extension'] == null ? null : SparkClusterExtension.fromMap((map['extension'] as Map).cast<String, dynamic>()),
      gateway: SparkClusterGateway.fromMap((map['gateway'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      metastores: map['metastores'] == null ? null : SparkClusterMetastores.fromMap((map['metastores'] as Map).cast<String, dynamic>()),
      monitor: map['monitor'] == null ? null : SparkClusterMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : SparkClusterNetwork.fromMap((map['network'] as Map).cast<String, dynamic>()),
      privateLinkConfiguration: map['privateLinkConfiguration'] == null ? null : SparkClusterPrivateLinkConfiguration.fromMap((map['privateLinkConfiguration'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      roles: SparkClusterRoles.fromMap((map['roles'] as Map).cast<String, dynamic>()),
      securityProfile: map['securityProfile'] == null ? null : SparkClusterSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageAccountGen2: map['storageAccountGen2'] == null ? null : SparkClusterStorageAccountGen2.fromMap((map['storageAccountGen2'] as Map).cast<String, dynamic>()),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Input.decodeList<SparkClusterStorageAccount>(map['storageAccounts'], (value) => SparkClusterStorageAccount.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tier: map['tier'] as String,
      tlsMinVersion: map['tlsMinVersion'] == null ? null : map['tlsMinVersion'] as String,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

