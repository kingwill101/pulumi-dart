// ignore_for_file: unused_element, unnecessary_cast

import 'database_config_composer_v1beta1.dart';
import 'encryption_config_composer_v1beta1.dart';
import 'environment_config_environment_size_composer_v1beta1.dart';
import 'environment_config_resilience_mode_composer_v1beta1.dart';
import 'maintenance_window_composer_v1beta1.dart';
import 'master_authorized_networks_config_composer_v1beta1.dart';
import 'node_config_composer_v1beta1.dart';
import 'private_environment_config_composer_v1beta1.dart';
import 'recovery_config_composer_v1beta1.dart';
import 'software_config_composer_v1beta1.dart';
import 'web_server_config_composer_v1beta1.dart';
import 'web_server_network_access_control_composer_v1beta1.dart';
import 'workloads_config_composer_v1beta1.dart';

/// Configuration information for an environment.
class EnvironmentConfigComposerV1beta1 {
  /// Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow software.
  final DatabaseConfigComposerV1beta1? databaseConfig;

  /// Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot be updated.
  final EncryptionConfigComposerV1beta1? encryptionConfig;

  /// Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final EnvironmentConfigEnvironmentSizeComposerV1beta1? environmentSize;

  /// Optional. The maintenance window is the period when Cloud Composer components may undergo maintenance. It is defined so that maintenance is not executed during peak hours or critical time periods. The system will not be under maintenance for every occurrence of this window, but when maintenance is planned, it will be scheduled during the window. The maintenance window period must encompass at least 12 hours per week. This may be split into multiple chunks, each with a size of at least 4 hours. If this value is omitted, Cloud Composer components may be subject to maintenance at any time.
  final MaintenanceWindowComposerV1beta1? maintenanceWindow;

  /// Optional. The configuration options for GKE cluster master authorized networks. By default master authorized networks feature is: - in case of private environment: enabled with no external networks allowlisted. - in case of public environment: disabled.
  final MasterAuthorizedNetworksConfigComposerV1beta1?
      masterAuthorizedNetworksConfig;

  /// The configuration used for the Kubernetes Engine cluster.
  final NodeConfigComposerV1beta1? nodeConfig;

  /// The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final int? nodeCount;

  /// The configuration used for the Private IP Cloud Composer environment.
  final PrivateEnvironmentConfigComposerV1beta1? privateEnvironmentConfig;

  /// Optional. The Recovery settings configuration of an environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final RecoveryConfigComposerV1beta1? recoveryConfig;

  /// Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.*.* and newer.
  final EnvironmentConfigResilienceModeComposerV1beta1? resilienceMode;

  /// The configuration settings for software inside the environment.
  final SoftwareConfigComposerV1beta1? softwareConfig;

  /// Optional. The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final WebServerConfigComposerV1beta1? webServerConfig;

  /// Optional. The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied.
  final WebServerNetworkAccessControlComposerV1beta1?
      webServerNetworkAccessControl;

  /// Optional. The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. The GKE cluster runs Airflow scheduler, web server and workers workloads. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final WorkloadsConfigComposerV1beta1? workloadsConfig;

  EnvironmentConfigComposerV1beta1({
    this.databaseConfig,
    this.encryptionConfig,
    this.environmentSize,
    this.maintenanceWindow,
    this.masterAuthorizedNetworksConfig,
    this.nodeConfig,
    this.nodeCount,
    this.privateEnvironmentConfig,
    this.recoveryConfig,
    this.resilienceMode,
    this.softwareConfig,
    this.webServerConfig,
    this.webServerNetworkAccessControl,
    this.workloadsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseConfigValue = databaseConfig;
    if (databaseConfigValue != null) {
      map['databaseConfig'] = databaseConfigValue.toMap();
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = encryptionConfigValue.toMap();
    }
    final environmentSizeValue = environmentSize;
    if (environmentSizeValue != null) {
      map['environmentSize'] = environmentSizeValue.value;
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = maintenanceWindowValue.toMap();
    }
    final masterAuthorizedNetworksConfigValue = masterAuthorizedNetworksConfig;
    if (masterAuthorizedNetworksConfigValue != null) {
      map['masterAuthorizedNetworksConfig'] =
          masterAuthorizedNetworksConfigValue.toMap();
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = nodeConfigValue.toMap();
    }
    final nodeCountValue = nodeCount;
    if (nodeCountValue != null) {
      map['nodeCount'] = nodeCountValue;
    }
    final privateEnvironmentConfigValue = privateEnvironmentConfig;
    if (privateEnvironmentConfigValue != null) {
      map['privateEnvironmentConfig'] = privateEnvironmentConfigValue.toMap();
    }
    final recoveryConfigValue = recoveryConfig;
    if (recoveryConfigValue != null) {
      map['recoveryConfig'] = recoveryConfigValue.toMap();
    }
    final resilienceModeValue = resilienceMode;
    if (resilienceModeValue != null) {
      map['resilienceMode'] = resilienceModeValue.value;
    }
    final softwareConfigValue = softwareConfig;
    if (softwareConfigValue != null) {
      map['softwareConfig'] = softwareConfigValue.toMap();
    }
    final webServerConfigValue = webServerConfig;
    if (webServerConfigValue != null) {
      map['webServerConfig'] = webServerConfigValue.toMap();
    }
    final webServerNetworkAccessControlValue = webServerNetworkAccessControl;
    if (webServerNetworkAccessControlValue != null) {
      map['webServerNetworkAccessControl'] =
          webServerNetworkAccessControlValue.toMap();
    }
    final workloadsConfigValue = workloadsConfig;
    if (workloadsConfigValue != null) {
      map['workloadsConfig'] = workloadsConfigValue.toMap();
    }
    return map;
  }

  factory EnvironmentConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigComposerV1beta1(
      databaseConfig: map['databaseConfig'] == null
          ? null
          : DatabaseConfigComposerV1beta1.fromMap(
              (map['databaseConfig'] as Map).cast<String, dynamic>()),
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfigComposerV1beta1.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      environmentSize: map['environmentSize'] == null
          ? null
          : EnvironmentConfigEnvironmentSizeComposerV1beta1.fromValue(
              map['environmentSize'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : MaintenanceWindowComposerV1beta1.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      masterAuthorizedNetworksConfig:
          map['masterAuthorizedNetworksConfig'] == null
              ? null
              : MasterAuthorizedNetworksConfigComposerV1beta1.fromMap(
                  (map['masterAuthorizedNetworksConfig'] as Map)
                      .cast<String, dynamic>()),
      nodeConfig: map['nodeConfig'] == null
          ? null
          : NodeConfigComposerV1beta1.fromMap(
              (map['nodeConfig'] as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      privateEnvironmentConfig: map['privateEnvironmentConfig'] == null
          ? null
          : PrivateEnvironmentConfigComposerV1beta1.fromMap(
              (map['privateEnvironmentConfig'] as Map).cast<String, dynamic>()),
      recoveryConfig: map['recoveryConfig'] == null
          ? null
          : RecoveryConfigComposerV1beta1.fromMap(
              (map['recoveryConfig'] as Map).cast<String, dynamic>()),
      resilienceMode: map['resilienceMode'] == null
          ? null
          : EnvironmentConfigResilienceModeComposerV1beta1.fromValue(
              map['resilienceMode'] as String),
      softwareConfig: map['softwareConfig'] == null
          ? null
          : SoftwareConfigComposerV1beta1.fromMap(
              (map['softwareConfig'] as Map).cast<String, dynamic>()),
      webServerConfig: map['webServerConfig'] == null
          ? null
          : WebServerConfigComposerV1beta1.fromMap(
              (map['webServerConfig'] as Map).cast<String, dynamic>()),
      webServerNetworkAccessControl:
          map['webServerNetworkAccessControl'] == null
              ? null
              : WebServerNetworkAccessControlComposerV1beta1.fromMap(
                  (map['webServerNetworkAccessControl'] as Map)
                      .cast<String, dynamic>()),
      workloadsConfig: map['workloadsConfig'] == null
          ? null
          : WorkloadsConfigComposerV1beta1.fromMap(
              (map['workloadsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
