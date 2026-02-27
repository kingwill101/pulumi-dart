// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automated_backup_policy_alloydb_v1alpha.dart';
import 'cluster_database_version_alloydb_v1alpha.dart';
import 'continuous_backup_config_alloydb_v1alpha.dart';
import 'encryption_config_alloydb_v1alpha.dart';
import 'network_config_alloydb_v1alpha.dart';
import 'psc_config.dart';
import 'secondary_config_alloydb_v1alpha.dart';
import 'ssl_config_alloydb_v1alpha.dart';
import 'user_password_alloydb_v1alpha.dart';

/// The set of arguments for Cluster.
class ClusterAlloydbV1alphaArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final pulumi.Input<Map<String, String>>? annotations;

  /// The automated backup policy for this cluster. If no policy is provided then the default policy will be used. If backups are supported for the cluster, the default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. For more information on the defaults, consult the documentation for the message type.
  final pulumi.Input<AutomatedBackupPolicyAlloydbV1alpha>?
      automatedBackupPolicy;

  /// Required. ID of the requesting object.
  final pulumi.Input<String> clusterId;

  /// Optional. Continuous backup configuration for this cluster.
  final pulumi.Input<ContinuousBackupConfigAlloydbV1alpha>?
      continuousBackupConfig;

  /// Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
  final pulumi.Input<ClusterDatabaseVersionAlloydbV1alpha>? databaseVersion;

  /// User-settable and human-readable display name for the Cluster.
  final pulumi.Input<String>? displayName;

  /// Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  final pulumi.Input<EncryptionConfigAlloydbV1alpha>? encryptionConfig;

  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;

  /// Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` this is ignored.
  final pulumi.Input<UserPasswordAlloydbV1alpha>? initialUser;

  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project}/global/networks/{network_id}". This is required to create a cluster. Deprecated, use network_config.network instead.
  final pulumi.Input<String> network;
  final pulumi.Input<NetworkConfigAlloydbV1alpha>? networkConfig;
  final pulumi.Input<String>? project;

  /// Optional. The configuration for Private Service Connect (PSC) for the cluster.
  final pulumi.Input<PscConfig>? pscConfig;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Cross Region replication config specific to SECONDARY cluster.
  final pulumi.Input<SecondaryConfigAlloydbV1alpha>? secondaryConfig;

  /// SSL configuration for this AlloyDB cluster.
  final pulumi.Input<SslConfigAlloydbV1alpha>? sslConfig;

  ClusterAlloydbV1alphaArgs({
    this.annotations,
    this.automatedBackupPolicy,
    required this.clusterId,
    this.continuousBackupConfig,
    this.databaseVersion,
    this.displayName,
    this.encryptionConfig,
    this.etag,
    this.initialUser,
    this.labels,
    this.location,
    required this.network,
    this.networkConfig,
    this.project,
    this.pscConfig,
    this.requestId,
    this.secondaryConfig,
    this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final automatedBackupPolicyValue = automatedBackupPolicy;
    if (automatedBackupPolicyValue != null) {
      map['automatedBackupPolicy'] = pulumi.Input.mapOptionalInputValue<
              AutomatedBackupPolicyAlloydbV1alpha, Map<String, dynamic>>(
          automatedBackupPolicyValue, (value) => value.toMap());
    }
    map['clusterId'] = clusterId;
    final continuousBackupConfigValue = continuousBackupConfig;
    if (continuousBackupConfigValue != null) {
      map['continuousBackupConfig'] = pulumi.Input.mapOptionalInputValue<
              ContinuousBackupConfigAlloydbV1alpha, Map<String, dynamic>>(
          continuousBackupConfigValue, (value) => value.toMap());
    }
    final databaseVersionValue = databaseVersion;
    if (databaseVersionValue != null) {
      map['databaseVersion'] = pulumi.Input.mapOptionalInputValue<
          ClusterDatabaseVersionAlloydbV1alpha,
          String>(databaseVersionValue, (value) => value.value);
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = pulumi.Input.mapOptionalInputValue<
              EncryptionConfigAlloydbV1alpha, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final initialUserValue = initialUser;
    if (initialUserValue != null) {
      map['initialUser'] = pulumi.Input.mapOptionalInputValue<
          UserPasswordAlloydbV1alpha,
          Map<String, dynamic>>(initialUserValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['network'] = network;
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          NetworkConfigAlloydbV1alpha,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscConfigValue = pscConfig;
    if (pscConfigValue != null) {
      map['pscConfig'] =
          pulumi.Input.mapOptionalInputValue<PscConfig, Map<String, dynamic>>(
              pscConfigValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final secondaryConfigValue = secondaryConfig;
    if (secondaryConfigValue != null) {
      map['secondaryConfig'] = pulumi.Input.mapOptionalInputValue<
          SecondaryConfigAlloydbV1alpha,
          Map<String, dynamic>>(secondaryConfigValue, (value) => value.toMap());
    }
    final sslConfigValue = sslConfig;
    if (sslConfigValue != null) {
      map['sslConfig'] = pulumi.Input.mapOptionalInputValue<
          SslConfigAlloydbV1alpha,
          Map<String, dynamic>>(sslConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterAlloydbV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return ClusterAlloydbV1alphaArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      automatedBackupPolicy:
          pulumi.Input.asOptionalInput<AutomatedBackupPolicyAlloydbV1alpha>(
              map['automatedBackupPolicy']),
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      continuousBackupConfig:
          pulumi.Input.asOptionalInput<ContinuousBackupConfigAlloydbV1alpha>(
              map['continuousBackupConfig']),
      databaseVersion:
          pulumi.Input.asOptionalInput<ClusterDatabaseVersionAlloydbV1alpha>(
              map['databaseVersion']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      encryptionConfig:
          pulumi.Input.asOptionalInput<EncryptionConfigAlloydbV1alpha>(
              map['encryptionConfig']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      initialUser: pulumi.Input.asOptionalInput<UserPasswordAlloydbV1alpha>(
          map['initialUser']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      network: pulumi.Input.asInput<String>(map['network']),
      networkConfig: pulumi.Input.asOptionalInput<NetworkConfigAlloydbV1alpha>(
          map['networkConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pscConfig: pulumi.Input.asOptionalInput<PscConfig>(map['pscConfig']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      secondaryConfig:
          pulumi.Input.asOptionalInput<SecondaryConfigAlloydbV1alpha>(
              map['secondaryConfig']),
      sslConfig: pulumi.Input.asOptionalInput<SslConfigAlloydbV1alpha>(
          map['sslConfig']),
    );
  }
}
