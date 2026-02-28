// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_automated_backup_policy.dart';
import 'cluster_continuous_backup_config.dart';
import 'cluster_encryption_config.dart';
import 'cluster_initial_user.dart';
import 'cluster_maintenance_update_policy.dart';
import 'cluster_network_config.dart';
import 'cluster_psc_config.dart';
import 'cluster_restore_backup_source.dart';
import 'cluster_restore_continuous_backup_source.dart';
import 'cluster_secondary_config.dart';

/// {@template pulumi_alloydb_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_alloydb_cluster_cluster_args_doc}
class ClusterArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutomatedBackupPolicy>? automatedBackupPolicy;

  /// The ID of the alloydb cluster.
  final pulumi.Input<String> clusterId;

  /// The type of cluster. If not set, defaults to PRIMARY.
  /// Default value is `PRIMARY`.
  /// Possible values are: `PRIMARY`, `SECONDARY`.
  final pulumi.Input<String>? clusterType;

  /// The continuous backup config for this cluster.
  /// If no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days.
  /// Structure is documented below.
  final pulumi.Input<ClusterContinuousBackupConfig>? continuousBackupConfig;

  /// The database engine major version. This is an optional field and it's populated at the Cluster creation time.
  /// Note: Changing this field to a higer version results in upgrading the AlloyDB cluster which is an irreversible change.
  final pulumi.Input<String>? databaseVersion;

  /// Policy to determine if the cluster should be deleted forcefully.
  /// Deleting a cluster forcefully, deletes the cluster and all its associated instances within the cluster.
  /// Deleting a Secondary cluster with a secondary instance REQUIRES setting deletion_policy = "FORCE" otherwise an error is returned. This is needed as there is no support to delete just the secondary instance, and the only way to delete secondary instance is to delete the associated secondary cluster forcefully which also deletes the secondary instance.
  /// Possible values: DEFAULT, FORCE
  final pulumi.Input<String>? deletionPolicy;
  final pulumi.Input<bool>? deletionProtection;

  /// User-settable and human-readable display name for the Cluster.
  final pulumi.Input<String>? displayName;

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  final pulumi.Input<ClusterEncryptionConfig>? encryptionConfig;

  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;

  /// Initial user to setup during cluster creation. If unset for new Clusters, a postgres role with null password is created. You will need to create additional users or set the password in order to log in.
  /// Structure is documented below.
  final pulumi.Input<ClusterInitialUser>? initialUser;

  /// User-defined labels for the alloydb cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the alloydb cluster should reside.
  final pulumi.Input<String> location;

  /// MaintenanceUpdatePolicy defines the policy for system updates.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenanceUpdatePolicy>? maintenanceUpdatePolicy;

  /// Metadata related to network configuration.
  /// Structure is documented below.
  final pulumi.Input<ClusterNetworkConfig>? networkConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Configuration for Private Service Connect (PSC) for the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterPscConfig>? pscConfig;

  /// The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', both can't be set together.
  /// Structure is documented below.
  final pulumi.Input<ClusterRestoreBackupSource>? restoreBackupSource;

  /// The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', both can't be set together.
  /// Structure is documented below.
  final pulumi.Input<ClusterRestoreContinuousBackupSource>?
      restoreContinuousBackupSource;

  /// Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY.
  /// Structure is documented below.
  final pulumi.Input<ClusterSecondaryConfig>? secondaryConfig;

  /// Set to true to skip awaiting on the major version upgrade of the cluster.
  /// Possible values: true, false
  /// Default value: "true"
  final pulumi.Input<bool>? skipAwaitMajorVersionUpgrade;

  /// The subscrition type of cluster.
  /// Possible values are: `TRIAL`, `STANDARD`.
  final pulumi.Input<String>? subscriptionType;

  /// Creates a new [ClusterArgs].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [automatedBackupPolicy] The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default.
  /// [clusterId] The ID of the alloydb cluster.
  /// [clusterType] The type of cluster. If not set, defaults to PRIMARY.
  /// [continuousBackupConfig] The continuous backup config for this cluster.
  /// [databaseVersion] The database engine major version. This is an optional field and it's populated at the Cluster creation time.
  /// [deletionPolicy] Policy to determine if the cluster should be deleted forcefully.
  /// [deletionProtection] Optional.
  /// [displayName] User-settable and human-readable display name for the Cluster.
  /// [encryptionConfig] EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [initialUser] Initial user to setup during cluster creation. If unset for new Clusters, a postgres role with null password is created. You will need to create additional users or set the password in order to log in.
  /// [labels] User-defined labels for the alloydb cluster.
  /// [location] The location where the alloydb cluster should reside.
  /// [maintenanceUpdatePolicy] MaintenanceUpdatePolicy defines the policy for system updates.
  /// [networkConfig] Metadata related to network configuration.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscConfig] Configuration for Private Service Connect (PSC) for the cluster.
  /// [restoreBackupSource] The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', both can't be set together.
  /// [restoreContinuousBackupSource] The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', both can't be set together.
  /// [secondaryConfig] Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY.
  /// [skipAwaitMajorVersionUpgrade] Set to true to skip awaiting on the major version upgrade of the cluster.
  /// [subscriptionType] The subscrition type of cluster.
  ClusterArgs({
    Map<String, String>? annotations,
    ClusterAutomatedBackupPolicy? automatedBackupPolicy,
    required String clusterId,
    String? clusterType,
    ClusterContinuousBackupConfig? continuousBackupConfig,
    String? databaseVersion,
    String? deletionPolicy,
    bool? deletionProtection,
    String? displayName,
    ClusterEncryptionConfig? encryptionConfig,
    String? etag,
    ClusterInitialUser? initialUser,
    Map<String, String>? labels,
    required String location,
    ClusterMaintenanceUpdatePolicy? maintenanceUpdatePolicy,
    ClusterNetworkConfig? networkConfig,
    String? project,
    ClusterPscConfig? pscConfig,
    ClusterRestoreBackupSource? restoreBackupSource,
    ClusterRestoreContinuousBackupSource? restoreContinuousBackupSource,
    ClusterSecondaryConfig? secondaryConfig,
    bool? skipAwaitMajorVersionUpgrade,
    String? subscriptionType,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        automatedBackupPolicy =
            pulumi.Input.asOptionalInput<ClusterAutomatedBackupPolicy>(
                automatedBackupPolicy),
        clusterId = pulumi.Input.asInput<String>(clusterId),
        clusterType = pulumi.Input.asOptionalInput<String>(clusterType),
        continuousBackupConfig =
            pulumi.Input.asOptionalInput<ClusterContinuousBackupConfig>(
                continuousBackupConfig),
        databaseVersion = pulumi.Input.asOptionalInput<String>(databaseVersion),
        deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
        deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        encryptionConfig =
            pulumi.Input.asOptionalInput<ClusterEncryptionConfig>(
                encryptionConfig),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        initialUser =
            pulumi.Input.asOptionalInput<ClusterInitialUser>(initialUser),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        maintenanceUpdatePolicy =
            pulumi.Input.asOptionalInput<ClusterMaintenanceUpdatePolicy>(
                maintenanceUpdatePolicy),
        networkConfig =
            pulumi.Input.asOptionalInput<ClusterNetworkConfig>(networkConfig),
        project = pulumi.Input.asOptionalInput<String>(project),
        pscConfig = pulumi.Input.asOptionalInput<ClusterPscConfig>(pscConfig),
        restoreBackupSource =
            pulumi.Input.asOptionalInput<ClusterRestoreBackupSource>(
                restoreBackupSource),
        restoreContinuousBackupSource =
            pulumi.Input.asOptionalInput<ClusterRestoreContinuousBackupSource>(
                restoreContinuousBackupSource),
        secondaryConfig = pulumi.Input.asOptionalInput<ClusterSecondaryConfig>(
            secondaryConfig),
        skipAwaitMajorVersionUpgrade =
            pulumi.Input.asOptionalInput<bool>(skipAwaitMajorVersionUpgrade),
        subscriptionType =
            pulumi.Input.asOptionalInput<String>(subscriptionType);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final automatedBackupPolicyValue = automatedBackupPolicy;
    if (automatedBackupPolicyValue != null) {
      map['automatedBackupPolicy'] = pulumi.Input.mapOptionalInputValue<
              ClusterAutomatedBackupPolicy, Map<String, dynamic>>(
          automatedBackupPolicyValue, (value) => value.toMap());
    }
    map['clusterId'] = clusterId;
    final clusterTypeValue = clusterType;
    if (clusterTypeValue != null) {
      map['clusterType'] = clusterTypeValue;
    }
    final continuousBackupConfigValue = continuousBackupConfig;
    if (continuousBackupConfigValue != null) {
      map['continuousBackupConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterContinuousBackupConfig, Map<String, dynamic>>(
          continuousBackupConfigValue, (value) => value.toMap());
    }
    final databaseVersionValue = databaseVersion;
    if (databaseVersionValue != null) {
      map['databaseVersion'] = databaseVersionValue;
    }
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterEncryptionConfig, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final initialUserValue = initialUser;
    if (initialUserValue != null) {
      map['initialUser'] = pulumi.Input.mapOptionalInputValue<
          ClusterInitialUser,
          Map<String, dynamic>>(initialUserValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final maintenanceUpdatePolicyValue = maintenanceUpdatePolicy;
    if (maintenanceUpdatePolicyValue != null) {
      map['maintenanceUpdatePolicy'] = pulumi.Input.mapOptionalInputValue<
              ClusterMaintenanceUpdatePolicy, Map<String, dynamic>>(
          maintenanceUpdatePolicyValue, (value) => value.toMap());
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          ClusterNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscConfigValue = pscConfig;
    if (pscConfigValue != null) {
      map['pscConfig'] = pulumi.Input.mapOptionalInputValue<ClusterPscConfig,
          Map<String, dynamic>>(pscConfigValue, (value) => value.toMap());
    }
    final restoreBackupSourceValue = restoreBackupSource;
    if (restoreBackupSourceValue != null) {
      map['restoreBackupSource'] = pulumi.Input.mapOptionalInputValue<
              ClusterRestoreBackupSource, Map<String, dynamic>>(
          restoreBackupSourceValue, (value) => value.toMap());
    }
    final restoreContinuousBackupSourceValue = restoreContinuousBackupSource;
    if (restoreContinuousBackupSourceValue != null) {
      map['restoreContinuousBackupSource'] = pulumi.Input.mapOptionalInputValue<
              ClusterRestoreContinuousBackupSource, Map<String, dynamic>>(
          restoreContinuousBackupSourceValue, (value) => value.toMap());
    }
    final secondaryConfigValue = secondaryConfig;
    if (secondaryConfigValue != null) {
      map['secondaryConfig'] = pulumi.Input.mapOptionalInputValue<
          ClusterSecondaryConfig,
          Map<String, dynamic>>(secondaryConfigValue, (value) => value.toMap());
    }
    final skipAwaitMajorVersionUpgradeValue = skipAwaitMajorVersionUpgrade;
    if (skipAwaitMajorVersionUpgradeValue != null) {
      map['skipAwaitMajorVersionUpgrade'] = skipAwaitMajorVersionUpgradeValue;
    }
    final subscriptionTypeValue = subscriptionType;
    if (subscriptionTypeValue != null) {
      map['subscriptionType'] = subscriptionTypeValue;
    }
    return map;
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      automatedBackupPolicy: map['automatedBackupPolicy'] == null
          ? null
          : ClusterAutomatedBackupPolicy.fromMap(
              (map['automatedBackupPolicy'] as Map).cast<String, dynamic>()),
      clusterId: map['clusterId'] as String,
      clusterType:
          map['clusterType'] == null ? null : map['clusterType'] as String,
      continuousBackupConfig: map['continuousBackupConfig'] == null
          ? null
          : ClusterContinuousBackupConfig.fromMap(
              (map['continuousBackupConfig'] as Map).cast<String, dynamic>()),
      databaseVersion: map['databaseVersion'] == null
          ? null
          : map['databaseVersion'] as String,
      deletionPolicy: map['deletionPolicy'] == null
          ? null
          : map['deletionPolicy'] as String,
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : ClusterEncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      initialUser: map['initialUser'] == null
          ? null
          : ClusterInitialUser.fromMap(
              (map['initialUser'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      maintenanceUpdatePolicy: map['maintenanceUpdatePolicy'] == null
          ? null
          : ClusterMaintenanceUpdatePolicy.fromMap(
              (map['maintenanceUpdatePolicy'] as Map).cast<String, dynamic>()),
      networkConfig: map['networkConfig'] == null
          ? null
          : ClusterNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      pscConfig: map['pscConfig'] == null
          ? null
          : ClusterPscConfig.fromMap(
              (map['pscConfig'] as Map).cast<String, dynamic>()),
      restoreBackupSource: map['restoreBackupSource'] == null
          ? null
          : ClusterRestoreBackupSource.fromMap(
              (map['restoreBackupSource'] as Map).cast<String, dynamic>()),
      restoreContinuousBackupSource:
          map['restoreContinuousBackupSource'] == null
              ? null
              : ClusterRestoreContinuousBackupSource.fromMap(
                  (map['restoreContinuousBackupSource'] as Map)
                      .cast<String, dynamic>()),
      secondaryConfig: map['secondaryConfig'] == null
          ? null
          : ClusterSecondaryConfig.fromMap(
              (map['secondaryConfig'] as Map).cast<String, dynamic>()),
      skipAwaitMajorVersionUpgrade: map['skipAwaitMajorVersionUpgrade'] == null
          ? null
          : map['skipAwaitMajorVersionUpgrade'] as bool,
      subscriptionType: map['subscriptionType'] == null
          ? null
          : map['subscriptionType'] as String,
    );
  }
}
