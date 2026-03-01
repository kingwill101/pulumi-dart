// ignore_for_file: unused_element, unnecessary_cast

import 'connectivity_test_source_app_engine_version.dart';
import 'connectivity_test_source_cloud_function.dart';
import 'connectivity_test_source_cloud_run_revision.dart';

class ConnectivityTestSource {
  /// An App Engine service version.
  /// Structure is documented below.
  final ConnectivityTestSourceAppEngineVersion? appEngineVersion;

  /// A Cloud Function.
  /// Structure is documented below.
  final ConnectivityTestSourceCloudFunction? cloudFunction;

  /// A Cloud Run revision.
  /// Structure is documented below.
  final ConnectivityTestSourceCloudRunRevision? cloudRunRevision;

  /// A Cloud SQL instance URI.
  final String? cloudSqlInstance;

  /// A cluster URI for Google Kubernetes Engine cluster control plane.
  final String? gkeMasterCluster;

  /// A Compute Engine instance URI.
  final String? instance;

  /// The IP address of the endpoint, which can be an external or internal IP.
  final String? ipAddress;

  /// A VPC network URI.
  final String? network;

  /// Type of the network where the endpoint is located.
  /// Possible values are: `GCP_NETWORK`, `NON_GCP_NETWORK`.
  final String? networkType;

  /// The IP protocol port of the endpoint. Only applicable when protocol is
  /// TCP or UDP.
  final int? port;

  /// Project ID where the endpoint is located.
  /// The project ID can be derived from the URI if you provide a endpoint or
  /// network URI.
  /// The following are two cases where you may need to provide the project ID:
  /// 1. Only the IP address is specified, and the IP address is within a Google
  /// Cloud project.
  /// 2. When you are using Shared VPC and the IP address that you provide is
  /// from the service project. In this case, the network that the IP address
  /// resides in is defined in the host project.
  final String? projectId;

  /// Creates a new [ConnectivityTestSource].
  /// [appEngineVersion] An App Engine service version.
  /// [cloudFunction] A Cloud Function.
  /// [cloudRunRevision] A Cloud Run revision.
  /// [cloudSqlInstance] A Cloud SQL instance URI.
  /// [gkeMasterCluster] A cluster URI for Google Kubernetes Engine cluster control plane.
  /// [instance] A Compute Engine instance URI.
  /// [ipAddress] The IP address of the endpoint, which can be an external or internal IP.
  /// [network] A VPC network URI.
  /// [networkType] Type of the network where the endpoint is located.
  /// [port] The IP protocol port of the endpoint. Only applicable when protocol is
  /// [projectId] Project ID where the endpoint is located.
  ConnectivityTestSource({
    this.appEngineVersion,
    this.cloudFunction,
    this.cloudRunRevision,
    this.cloudSqlInstance,
    this.gkeMasterCluster,
    this.instance,
    this.ipAddress,
    this.network,
    this.networkType,
    this.port,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineVersion': ?appEngineVersion == null
          ? null
          : appEngineVersion!.toMap(),
      'cloudFunction': ?cloudFunction == null ? null : cloudFunction!.toMap(),
      'cloudRunRevision': ?cloudRunRevision == null
          ? null
          : cloudRunRevision!.toMap(),
      'cloudSqlInstance': ?cloudSqlInstance,
      'gkeMasterCluster': ?gkeMasterCluster,
      'instance': ?instance,
      'ipAddress': ?ipAddress,
      'network': ?network,
      'networkType': ?networkType,
      'port': ?port,
      'projectId': ?projectId,
    };
  }

  factory ConnectivityTestSource.fromMap(Map<String, dynamic> map) {
    return ConnectivityTestSource(
      appEngineVersion: map['appEngineVersion'] == null
          ? null
          : ConnectivityTestSourceAppEngineVersion.fromMap(
              (map['appEngineVersion'] as Map).cast<String, dynamic>(),
            ),
      cloudFunction: map['cloudFunction'] == null
          ? null
          : ConnectivityTestSourceCloudFunction.fromMap(
              (map['cloudFunction'] as Map).cast<String, dynamic>(),
            ),
      cloudRunRevision: map['cloudRunRevision'] == null
          ? null
          : ConnectivityTestSourceCloudRunRevision.fromMap(
              (map['cloudRunRevision'] as Map).cast<String, dynamic>(),
            ),
      cloudSqlInstance: map['cloudSqlInstance'] == null
          ? null
          : map['cloudSqlInstance'] as String,
      gkeMasterCluster: map['gkeMasterCluster'] == null
          ? null
          : map['gkeMasterCluster'] as String,
      instance: map['instance'] == null ? null : map['instance'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkType: map['networkType'] == null
          ? null
          : map['networkType'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}
