// ignore_for_file: unused_element, unnecessary_cast

import 'database_config_response_composer_v1beta1.dart';
import 'encryption_config_response_composer_v1beta1.dart';
import 'maintenance_window_response_composer_v1beta1.dart';
import 'master_authorized_networks_config_response_composer_v1beta1.dart';
import 'node_config_response_composer_v1beta1.dart';
import 'private_environment_config_response_composer_v1beta1.dart';
import 'recovery_config_response_composer_v1beta1.dart';
import 'software_config_response_composer_v1beta1.dart';
import 'web_server_config_response_composer_v1beta1.dart';
import 'web_server_network_access_control_response_composer_v1beta1.dart';
import 'workloads_config_response_composer_v1beta1.dart';

/// Configuration information for an environment.
class EnvironmentConfigResponseComposerV1beta1 {
  /// The 'bring your own identity' variant of the URI of the Apache Airflow Web UI hosted within this environment, to be accessed with external identities using workforce identity federation (see [Access environments with workforce identity federation](/composer/docs/composer-2/access-environments-with-workforce-identity-federation)).
  final String airflowByoidUri;

  /// The URI of the Apache Airflow Web UI hosted within this environment (see [Airflow web interface](/composer/docs/how-to/accessing/airflow-web-interface)).
  final String airflowUri;

  /// The Cloud Storage prefix of the DAGs for this environment. Although Cloud Storage objects reside in a flat namespace, a hierarchical file tree can be simulated using "/"-delimited object name prefixes. DAG objects for this environment reside in a simulated directory with the given prefix.
  final String dagGcsPrefix;

  /// Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow software.
  final DatabaseConfigResponseComposerV1beta1 databaseConfig;

  /// Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot be updated.
  final EncryptionConfigResponseComposerV1beta1 encryptionConfig;

  /// Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final String environmentSize;

  /// The Kubernetes Engine cluster used to run this environment.
  final String gkeCluster;

  /// Optional. The maintenance window is the period when Cloud Composer components may undergo maintenance. It is defined so that maintenance is not executed during peak hours or critical time periods. The system will not be under maintenance for every occurrence of this window, but when maintenance is planned, it will be scheduled during the window. The maintenance window period must encompass at least 12 hours per week. This may be split into multiple chunks, each with a size of at least 4 hours. If this value is omitted, Cloud Composer components may be subject to maintenance at any time.
  final MaintenanceWindowResponseComposerV1beta1 maintenanceWindow;

  /// Optional. The configuration options for GKE cluster master authorized networks. By default master authorized networks feature is: - in case of private environment: enabled with no external networks allowlisted. - in case of public environment: disabled.
  final MasterAuthorizedNetworksConfigResponseComposerV1beta1
      masterAuthorizedNetworksConfig;

  /// The configuration used for the Kubernetes Engine cluster.
  final NodeConfigResponseComposerV1beta1 nodeConfig;

  /// The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final int nodeCount;

  /// The configuration used for the Private IP Cloud Composer environment.
  final PrivateEnvironmentConfigResponseComposerV1beta1
      privateEnvironmentConfig;

  /// Optional. The Recovery settings configuration of an environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final RecoveryConfigResponseComposerV1beta1 recoveryConfig;

  /// Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.*.* and newer.
  final String resilienceMode;

  /// The configuration settings for software inside the environment.
  final SoftwareConfigResponseComposerV1beta1 softwareConfig;

  /// Optional. The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final WebServerConfigResponseComposerV1beta1 webServerConfig;

  /// Optional. The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied.
  final WebServerNetworkAccessControlResponseComposerV1beta1
      webServerNetworkAccessControl;

  /// Optional. The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. The GKE cluster runs Airflow scheduler, web server and workers workloads. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final WorkloadsConfigResponseComposerV1beta1 workloadsConfig;

  EnvironmentConfigResponseComposerV1beta1({
    required this.airflowByoidUri,
    required this.airflowUri,
    required this.dagGcsPrefix,
    required this.databaseConfig,
    required this.encryptionConfig,
    required this.environmentSize,
    required this.gkeCluster,
    required this.maintenanceWindow,
    required this.masterAuthorizedNetworksConfig,
    required this.nodeConfig,
    required this.nodeCount,
    required this.privateEnvironmentConfig,
    required this.recoveryConfig,
    required this.resilienceMode,
    required this.softwareConfig,
    required this.webServerConfig,
    required this.webServerNetworkAccessControl,
    required this.workloadsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['airflowByoidUri'] = airflowByoidUri;
    map['airflowUri'] = airflowUri;
    map['dagGcsPrefix'] = dagGcsPrefix;
    map['databaseConfig'] = databaseConfig.toMap();
    map['encryptionConfig'] = encryptionConfig.toMap();
    map['environmentSize'] = environmentSize;
    map['gkeCluster'] = gkeCluster;
    map['maintenanceWindow'] = maintenanceWindow.toMap();
    map['masterAuthorizedNetworksConfig'] =
        masterAuthorizedNetworksConfig.toMap();
    map['nodeConfig'] = nodeConfig.toMap();
    map['nodeCount'] = nodeCount;
    map['privateEnvironmentConfig'] = privateEnvironmentConfig.toMap();
    map['recoveryConfig'] = recoveryConfig.toMap();
    map['resilienceMode'] = resilienceMode;
    map['softwareConfig'] = softwareConfig.toMap();
    map['webServerConfig'] = webServerConfig.toMap();
    map['webServerNetworkAccessControl'] =
        webServerNetworkAccessControl.toMap();
    map['workloadsConfig'] = workloadsConfig.toMap();
    return map;
  }

  factory EnvironmentConfigResponseComposerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentConfigResponseComposerV1beta1(
      airflowByoidUri: map['airflowByoidUri'] as String,
      airflowUri: map['airflowUri'] as String,
      dagGcsPrefix: map['dagGcsPrefix'] as String,
      databaseConfig: DatabaseConfigResponseComposerV1beta1.fromMap(
          (map['databaseConfig'] as Map).cast<String, dynamic>()),
      encryptionConfig: EncryptionConfigResponseComposerV1beta1.fromMap(
          (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      environmentSize: map['environmentSize'] as String,
      gkeCluster: map['gkeCluster'] as String,
      maintenanceWindow: MaintenanceWindowResponseComposerV1beta1.fromMap(
          (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      masterAuthorizedNetworksConfig:
          MasterAuthorizedNetworksConfigResponseComposerV1beta1.fromMap(
              (map['masterAuthorizedNetworksConfig'] as Map)
                  .cast<String, dynamic>()),
      nodeConfig: NodeConfigResponseComposerV1beta1.fromMap(
          (map['nodeConfig'] as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] as int,
      privateEnvironmentConfig:
          PrivateEnvironmentConfigResponseComposerV1beta1.fromMap(
              (map['privateEnvironmentConfig'] as Map).cast<String, dynamic>()),
      recoveryConfig: RecoveryConfigResponseComposerV1beta1.fromMap(
          (map['recoveryConfig'] as Map).cast<String, dynamic>()),
      resilienceMode: map['resilienceMode'] as String,
      softwareConfig: SoftwareConfigResponseComposerV1beta1.fromMap(
          (map['softwareConfig'] as Map).cast<String, dynamic>()),
      webServerConfig: WebServerConfigResponseComposerV1beta1.fromMap(
          (map['webServerConfig'] as Map).cast<String, dynamic>()),
      webServerNetworkAccessControl:
          WebServerNetworkAccessControlResponseComposerV1beta1.fromMap(
              (map['webServerNetworkAccessControl'] as Map)
                  .cast<String, dynamic>()),
      workloadsConfig: WorkloadsConfigResponseComposerV1beta1.fromMap(
          (map['workloadsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
