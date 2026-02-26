// ignore_for_file: unused_element, unnecessary_cast

import 'database_config2.dart';
import 'encryption_config6.dart';
import 'environment_config_environment_size2.dart';
import 'environment_config_resilience_mode2.dart';
import 'maintenance_window2.dart';
import 'master_authorized_networks_config2.dart';
import 'node_config2.dart';
import 'private_environment_config2.dart';
import 'recovery_config2.dart';
import 'software_config2.dart';
import 'web_server_config2.dart';
import 'web_server_network_access_control2.dart';
import 'workloads_config2.dart';

/// Configuration information for an environment.
class EnvironmentConfig2 {
  /// Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow software.
  final DatabaseConfig2? databaseConfig;

  /// Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot be updated.
  final EncryptionConfig6? encryptionConfig;

  /// Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final EnvironmentConfigEnvironmentSize2? environmentSize;

  /// Optional. The maintenance window is the period when Cloud Composer components may undergo maintenance. It is defined so that maintenance is not executed during peak hours or critical time periods. The system will not be under maintenance for every occurrence of this window, but when maintenance is planned, it will be scheduled during the window. The maintenance window period must encompass at least 12 hours per week. This may be split into multiple chunks, each with a size of at least 4 hours. If this value is omitted, Cloud Composer components may be subject to maintenance at any time.
  final MaintenanceWindow2? maintenanceWindow;

  /// Optional. The configuration options for GKE cluster master authorized networks. By default master authorized networks feature is: - in case of private environment: enabled with no external networks allowlisted. - in case of public environment: disabled.
  final MasterAuthorizedNetworksConfig2? masterAuthorizedNetworksConfig;

  /// The configuration used for the Kubernetes Engine cluster.
  final NodeConfig2? nodeConfig;

  /// The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final int? nodeCount;

  /// The configuration used for the Private IP Cloud Composer environment.
  final PrivateEnvironmentConfig2? privateEnvironmentConfig;

  /// Optional. The Recovery settings configuration of an environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final RecoveryConfig2? recoveryConfig;

  /// Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.*.* and newer.
  final EnvironmentConfigResilienceMode2? resilienceMode;

  /// The configuration settings for software inside the environment.
  final SoftwareConfig2? softwareConfig;

  /// Optional. The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final WebServerConfig2? webServerConfig;

  /// Optional. The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied.
  final WebServerNetworkAccessControl2? webServerNetworkAccessControl;

  /// Optional. The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. The GKE cluster runs Airflow scheduler, web server and workers workloads. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final WorkloadsConfig2? workloadsConfig;

  EnvironmentConfig2({
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

  factory EnvironmentConfig2.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfig2(
      databaseConfig: map['databaseConfig'] == null
          ? null
          : DatabaseConfig2.fromMap(
              (map['databaseConfig'] as Map).cast<String, dynamic>()),
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfig6.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      environmentSize: map['environmentSize'] == null
          ? null
          : EnvironmentConfigEnvironmentSize2.fromValue(
              map['environmentSize'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : MaintenanceWindow2.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      masterAuthorizedNetworksConfig:
          map['masterAuthorizedNetworksConfig'] == null
              ? null
              : MasterAuthorizedNetworksConfig2.fromMap(
                  (map['masterAuthorizedNetworksConfig'] as Map)
                      .cast<String, dynamic>()),
      nodeConfig: map['nodeConfig'] == null
          ? null
          : NodeConfig2.fromMap(
              (map['nodeConfig'] as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      privateEnvironmentConfig: map['privateEnvironmentConfig'] == null
          ? null
          : PrivateEnvironmentConfig2.fromMap(
              (map['privateEnvironmentConfig'] as Map).cast<String, dynamic>()),
      recoveryConfig: map['recoveryConfig'] == null
          ? null
          : RecoveryConfig2.fromMap(
              (map['recoveryConfig'] as Map).cast<String, dynamic>()),
      resilienceMode: map['resilienceMode'] == null
          ? null
          : EnvironmentConfigResilienceMode2.fromValue(
              map['resilienceMode'] as String),
      softwareConfig: map['softwareConfig'] == null
          ? null
          : SoftwareConfig2.fromMap(
              (map['softwareConfig'] as Map).cast<String, dynamic>()),
      webServerConfig: map['webServerConfig'] == null
          ? null
          : WebServerConfig2.fromMap(
              (map['webServerConfig'] as Map).cast<String, dynamic>()),
      webServerNetworkAccessControl:
          map['webServerNetworkAccessControl'] == null
              ? null
              : WebServerNetworkAccessControl2.fromMap(
                  (map['webServerNetworkAccessControl'] as Map)
                      .cast<String, dynamic>()),
      workloadsConfig: map['workloadsConfig'] == null
          ? null
          : WorkloadsConfig2.fromMap(
              (map['workloadsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
