// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'automated_backup_policy2.dart';
import 'cluster_database_version2.dart';
import 'continuous_backup_config2.dart';
import 'encryption_config2.dart';
import 'network_config2.dart';
import 'psc_config.dart';
import 'secondary_config2.dart';
import 'ssl_config2.dart';
import 'user_password2.dart';

/// The set of arguments for Cluster.
class ClusterArgs2 {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final Input<Map<String, String>>? annotations;

  /// The automated backup policy for this cluster. If no policy is provided then the default policy will be used. If backups are supported for the cluster, the default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. For more information on the defaults, consult the documentation for the message type.
  final Input<AutomatedBackupPolicy2>? automatedBackupPolicy;

  /// Required. ID of the requesting object.
  final Input<String> clusterId;

  /// Optional. Continuous backup configuration for this cluster.
  final Input<ContinuousBackupConfig2>? continuousBackupConfig;

  /// Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
  final Input<ClusterDatabaseVersion2>? databaseVersion;

  /// User-settable and human-readable display name for the Cluster.
  final Input<String>? displayName;

  /// Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  final Input<EncryptionConfig2>? encryptionConfig;

  /// For Resource freshness validation (https://google.aip.dev/154)
  final Input<String>? etag;

  /// Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` this is ignored.
  final Input<UserPassword2>? initialUser;

  /// Labels as key value pairs
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project}/global/networks/{network_id}". This is required to create a cluster. Deprecated, use network_config.network instead.
  final Input<String> network;
  final Input<NetworkConfig2>? networkConfig;
  final Input<String>? project;

  /// Optional. The configuration for Private Service Connect (PSC) for the cluster.
  final Input<PscConfig>? pscConfig;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Cross Region replication config specific to SECONDARY cluster.
  final Input<SecondaryConfig2>? secondaryConfig;

  /// SSL configuration for this AlloyDB cluster.
  final Input<SslConfig2>? sslConfig;

  ClusterArgs2({
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
      map['automatedBackupPolicy'] = Input.mapOptionalInputValue<
              AutomatedBackupPolicy2, Map<String, dynamic>>(
          automatedBackupPolicyValue, (value) => value.toMap());
    }
    map['clusterId'] = clusterId;
    final continuousBackupConfigValue = continuousBackupConfig;
    if (continuousBackupConfigValue != null) {
      map['continuousBackupConfig'] = Input.mapOptionalInputValue<
              ContinuousBackupConfig2, Map<String, dynamic>>(
          continuousBackupConfigValue, (value) => value.toMap());
    }
    final databaseVersionValue = databaseVersion;
    if (databaseVersionValue != null) {
      map['databaseVersion'] =
          Input.mapOptionalInputValue<ClusterDatabaseVersion2, String>(
              databaseVersionValue, (value) => value.value);
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] =
          Input.mapOptionalInputValue<EncryptionConfig2, Map<String, dynamic>>(
              encryptionConfigValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final initialUserValue = initialUser;
    if (initialUserValue != null) {
      map['initialUser'] =
          Input.mapOptionalInputValue<UserPassword2, Map<String, dynamic>>(
              initialUserValue, (value) => value.toMap());
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
      map['networkConfig'] =
          Input.mapOptionalInputValue<NetworkConfig2, Map<String, dynamic>>(
              networkConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscConfigValue = pscConfig;
    if (pscConfigValue != null) {
      map['pscConfig'] =
          Input.mapOptionalInputValue<PscConfig, Map<String, dynamic>>(
              pscConfigValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final secondaryConfigValue = secondaryConfig;
    if (secondaryConfigValue != null) {
      map['secondaryConfig'] =
          Input.mapOptionalInputValue<SecondaryConfig2, Map<String, dynamic>>(
              secondaryConfigValue, (value) => value.toMap());
    }
    final sslConfigValue = sslConfig;
    if (sslConfigValue != null) {
      map['sslConfig'] =
          Input.mapOptionalInputValue<SslConfig2, Map<String, dynamic>>(
              sslConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterArgs2.fromMap(Map<String, dynamic> map) {
    return ClusterArgs2(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      automatedBackupPolicy: Input.asOptionalInput<AutomatedBackupPolicy2>(
          map['automatedBackupPolicy']),
      clusterId: Input.asInput<String>(map['clusterId']),
      continuousBackupConfig: Input.asOptionalInput<ContinuousBackupConfig2>(
          map['continuousBackupConfig']),
      databaseVersion: Input.asOptionalInput<ClusterDatabaseVersion2>(
          map['databaseVersion']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      encryptionConfig:
          Input.asOptionalInput<EncryptionConfig2>(map['encryptionConfig']),
      etag: Input.asOptionalInput<String>(map['etag']),
      initialUser: Input.asOptionalInput<UserPassword2>(map['initialUser']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      network: Input.asInput<String>(map['network']),
      networkConfig:
          Input.asOptionalInput<NetworkConfig2>(map['networkConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      pscConfig: Input.asOptionalInput<PscConfig>(map['pscConfig']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      secondaryConfig:
          Input.asOptionalInput<SecondaryConfig2>(map['secondaryConfig']),
      sslConfig: Input.asOptionalInput<SslConfig2>(map['sslConfig']),
    );
  }
}
