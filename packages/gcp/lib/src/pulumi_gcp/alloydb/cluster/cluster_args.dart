// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_automated_backup_policy/cluster_automated_backup_policy.dart';
import '../cluster_continuous_backup_config/cluster_continuous_backup_config.dart';
import '../cluster_encryption_config/cluster_encryption_config.dart';
import '../cluster_initial_user/cluster_initial_user.dart';
import '../cluster_maintenance_update_policy/cluster_maintenance_update_policy.dart';
import '../cluster_network_config/cluster_network_config.dart';
import '../cluster_psc_config/cluster_psc_config.dart';
import '../cluster_restore_backup_source/cluster_restore_backup_source.dart';
import '../cluster_restore_continuous_backup_source/cluster_restore_continuous_backup_source.dart';
import '../cluster_secondary_config/cluster_secondary_config.dart';

/// The set of arguments for Cluster.
class ClusterArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default.
  /// Structure is documented below.
  final Input<ClusterAutomatedBackupPolicy>? automatedBackupPolicy;

  /// The ID of the alloydb cluster.
  final Input<String> clusterId;

  /// The type of cluster. If not set, defaults to PRIMARY.
  /// Default value is `PRIMARY`.
  /// Possible values are: `PRIMARY`, `SECONDARY`.
  final Input<String>? clusterType;

  /// The continuous backup config for this cluster.
  /// If no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days.
  /// Structure is documented below.
  final Input<ClusterContinuousBackupConfig>? continuousBackupConfig;

  /// The database engine major version. This is an optional field and it's populated at the Cluster creation time.
  /// Note: Changing this field to a higer version results in upgrading the AlloyDB cluster which is an irreversible change.
  final Input<String>? databaseVersion;

  /// Policy to determine if the cluster should be deleted forcefully.
  /// Deleting a cluster forcefully, deletes the cluster and all its associated instances within the cluster.
  /// Deleting a Secondary cluster with a secondary instance REQUIRES setting<span pulumi-lang-nodejs=" deletionPolicy " pulumi-lang-dotnet=" DeletionPolicy " pulumi-lang-go=" deletionPolicy " pulumi-lang-python=" deletion_policy " pulumi-lang-yaml=" deletionPolicy " pulumi-lang-java=" deletionPolicy "> deletion_policy </span>= "FORCE" otherwise an error is returned. This is needed as there is no support to delete just the secondary instance, and the only way to delete secondary instance is to delete the associated secondary cluster forcefully which also deletes the secondary instance.
  /// Possible values: DEFAULT, FORCE
  final Input<String>? deletionPolicy;
  final Input<bool>? deletionProtection;

  /// User-settable and human-readable display name for the Cluster.
  final Input<String>? displayName;

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  final Input<ClusterEncryptionConfig>? encryptionConfig;

  /// For Resource freshness validation (https://google.aip.dev/154)
  final Input<String>? etag;

  /// Initial user to setup during cluster creation. If unset for new Clusters, a postgres role with null password is created. You will need to create additional users or set the password in order to log in.
  /// Structure is documented below.
  final Input<ClusterInitialUser>? initialUser;

  /// User-defined labels for the alloydb cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location where the alloydb cluster should reside.
  final Input<String> location;

  /// MaintenanceUpdatePolicy defines the policy for system updates.
  /// Structure is documented below.
  final Input<ClusterMaintenanceUpdatePolicy>? maintenanceUpdatePolicy;

  /// Metadata related to network configuration.
  /// Structure is documented below.
  final Input<ClusterNetworkConfig>? networkConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Configuration for Private Service Connect (PSC) for the cluster.
  /// Structure is documented below.
  final Input<ClusterPscConfig>? pscConfig;

  /// The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', both can't be set together.
  /// Structure is documented below.
  final Input<ClusterRestoreBackupSource>? restoreBackupSource;

  /// The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', both can't be set together.
  /// Structure is documented below.
  final Input<ClusterRestoreContinuousBackupSource>?
      restoreContinuousBackupSource;

  /// Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY.
  /// Structure is documented below.
  final Input<ClusterSecondaryConfig>? secondaryConfig;

  /// Set to true to skip awaiting on the major version upgrade of the cluster.
  /// Possible values: true, false
  /// Default value: "true"
  final Input<bool>? skipAwaitMajorVersionUpgrade;

  /// The subscrition type of cluster.
  /// Possible values are: `TRIAL`, `STANDARD`.
  final Input<String>? subscriptionType;

  ClusterArgs({
    this.annotations,
    this.automatedBackupPolicy,
    required this.clusterId,
    this.clusterType,
    this.continuousBackupConfig,
    this.databaseVersion,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.encryptionConfig,
    this.etag,
    this.initialUser,
    this.labels,
    required this.location,
    this.maintenanceUpdatePolicy,
    this.networkConfig,
    this.project,
    this.pscConfig,
    this.restoreBackupSource,
    this.restoreContinuousBackupSource,
    this.secondaryConfig,
    this.skipAwaitMajorVersionUpgrade,
    this.subscriptionType,
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
      map['continuousBackupConfig'] = Input.mapOptionalInputValue<
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
      map['encryptionConfig'] = Input.mapOptionalInputValue<
              ClusterEncryptionConfig, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final initialUserValue = initialUser;
    if (initialUserValue != null) {
      map['initialUser'] =
          Input.mapOptionalInputValue<ClusterInitialUser, Map<String, dynamic>>(
              initialUserValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final maintenanceUpdatePolicyValue = maintenanceUpdatePolicy;
    if (maintenanceUpdatePolicyValue != null) {
      map['maintenanceUpdatePolicy'] = Input.mapOptionalInputValue<
              ClusterMaintenanceUpdatePolicy, Map<String, dynamic>>(
          maintenanceUpdatePolicyValue, (value) => value.toMap());
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = Input.mapOptionalInputValue<ClusterNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscConfigValue = pscConfig;
    if (pscConfigValue != null) {
      map['pscConfig'] =
          Input.mapOptionalInputValue<ClusterPscConfig, Map<String, dynamic>>(
              pscConfigValue, (value) => value.toMap());
    }
    final restoreBackupSourceValue = restoreBackupSource;
    if (restoreBackupSourceValue != null) {
      map['restoreBackupSource'] = Input.mapOptionalInputValue<
              ClusterRestoreBackupSource, Map<String, dynamic>>(
          restoreBackupSourceValue, (value) => value.toMap());
    }
    final restoreContinuousBackupSourceValue = restoreContinuousBackupSource;
    if (restoreContinuousBackupSourceValue != null) {
      map['restoreContinuousBackupSource'] = Input.mapOptionalInputValue<
              ClusterRestoreContinuousBackupSource, Map<String, dynamic>>(
          restoreContinuousBackupSourceValue, (value) => value.toMap());
    }
    final secondaryConfigValue = secondaryConfig;
    if (secondaryConfigValue != null) {
      map['secondaryConfig'] = Input.mapOptionalInputValue<
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
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      automatedBackupPolicy:
          Input.asOptionalInput<ClusterAutomatedBackupPolicy>(
              map['automatedBackupPolicy']),
      clusterId: Input.asInput<String>(map['clusterId']),
      clusterType: Input.asOptionalInput<String>(map['clusterType']),
      continuousBackupConfig:
          Input.asOptionalInput<ClusterContinuousBackupConfig>(
              map['continuousBackupConfig']),
      databaseVersion: Input.asOptionalInput<String>(map['databaseVersion']),
      deletionPolicy: Input.asOptionalInput<String>(map['deletionPolicy']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      encryptionConfig: Input.asOptionalInput<ClusterEncryptionConfig>(
          map['encryptionConfig']),
      etag: Input.asOptionalInput<String>(map['etag']),
      initialUser:
          Input.asOptionalInput<ClusterInitialUser>(map['initialUser']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      maintenanceUpdatePolicy:
          Input.asOptionalInput<ClusterMaintenanceUpdatePolicy>(
              map['maintenanceUpdatePolicy']),
      networkConfig:
          Input.asOptionalInput<ClusterNetworkConfig>(map['networkConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      pscConfig: Input.asOptionalInput<ClusterPscConfig>(map['pscConfig']),
      restoreBackupSource: Input.asOptionalInput<ClusterRestoreBackupSource>(
          map['restoreBackupSource']),
      restoreContinuousBackupSource:
          Input.asOptionalInput<ClusterRestoreContinuousBackupSource>(
              map['restoreContinuousBackupSource']),
      secondaryConfig:
          Input.asOptionalInput<ClusterSecondaryConfig>(map['secondaryConfig']),
      skipAwaitMajorVersionUpgrade:
          Input.asOptionalInput<bool>(map['skipAwaitMajorVersionUpgrade']),
      subscriptionType: Input.asOptionalInput<String>(map['subscriptionType']),
    );
  }
}
