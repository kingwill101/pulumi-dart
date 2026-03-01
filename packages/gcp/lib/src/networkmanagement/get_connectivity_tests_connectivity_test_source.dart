// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_tests_connectivity_test_source_app_engine_version.dart';
import 'get_connectivity_tests_connectivity_test_source_cloud_function.dart';
import 'get_connectivity_tests_connectivity_test_source_cloud_run_revision.dart';

class GetConnectivityTestsConnectivityTestSource {
  /// An App Engine service version.
  /// Structure is documented below.
  final List<GetConnectivityTestsConnectivityTestSourceAppEngineVersion> appEngineVersions;
  /// A Cloud Function.
  /// Structure is documented below.
  final List<GetConnectivityTestsConnectivityTestSourceCloudFunction> cloudFunctions;
  /// A Cloud Run revision.
  /// Structure is documented below.
  final List<GetConnectivityTestsConnectivityTestSourceCloudRunRevision> cloudRunRevisions;
  /// A Cloud SQL instance URI.
  final String cloudSqlInstance;
  /// A cluster URI for Google Kubernetes Engine cluster control plane.
  final String gkeMasterCluster;
  /// A Compute Engine instance URI.
  final String instance;
  /// The IP address of the endpoint.
  final String ipAddress;
  /// A VPC network URI.
  final String network;
  /// Type of the network where the endpoint is located.
  final String networkType;
  /// The IP protocol port of the endpoint.
  final int port;
  /// Project ID where the endpoint is located.
  final String projectId;

  /// Creates a new [GetConnectivityTestsConnectivityTestSource].
  /// [appEngineVersions] An App Engine service version.
  /// [cloudFunctions] A Cloud Function.
  /// [cloudRunRevisions] A Cloud Run revision.
  /// [cloudSqlInstance] A Cloud SQL instance URI.
  /// [gkeMasterCluster] A cluster URI for Google Kubernetes Engine cluster control plane.
  /// [instance] A Compute Engine instance URI.
  /// [ipAddress] The IP address of the endpoint.
  /// [network] A VPC network URI.
  /// [networkType] Type of the network where the endpoint is located.
  /// [port] The IP protocol port of the endpoint.
  /// [projectId] Project ID where the endpoint is located.
  GetConnectivityTestsConnectivityTestSource({
    required this.appEngineVersions,
    required this.cloudFunctions,
    required this.cloudRunRevisions,
    required this.cloudSqlInstance,
    required this.gkeMasterCluster,
    required this.instance,
    required this.ipAddress,
    required this.network,
    required this.networkType,
    required this.port,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineVersions': pulumi.Input.encodeList<GetConnectivityTestsConnectivityTestSourceAppEngineVersion, Map<String, dynamic>>(appEngineVersions, (value) => value.toMap()),
      'cloudFunctions': pulumi.Input.encodeList<GetConnectivityTestsConnectivityTestSourceCloudFunction, Map<String, dynamic>>(cloudFunctions, (value) => value.toMap()),
      'cloudRunRevisions': pulumi.Input.encodeList<GetConnectivityTestsConnectivityTestSourceCloudRunRevision, Map<String, dynamic>>(cloudRunRevisions, (value) => value.toMap()),
      'cloudSqlInstance': cloudSqlInstance,
      'gkeMasterCluster': gkeMasterCluster,
      'instance': instance,
      'ipAddress': ipAddress,
      'network': network,
      'networkType': networkType,
      'port': port,
      'projectId': projectId,
    };
  }

  factory GetConnectivityTestsConnectivityTestSource.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestsConnectivityTestSource(
      appEngineVersions: pulumi.Input.decodeList<GetConnectivityTestsConnectivityTestSourceAppEngineVersion>(map['appEngineVersions'], (value) => GetConnectivityTestsConnectivityTestSourceAppEngineVersion.fromMap((value as Map).cast<String, dynamic>())),
      cloudFunctions: pulumi.Input.decodeList<GetConnectivityTestsConnectivityTestSourceCloudFunction>(map['cloudFunctions'], (value) => GetConnectivityTestsConnectivityTestSourceCloudFunction.fromMap((value as Map).cast<String, dynamic>())),
      cloudRunRevisions: pulumi.Input.decodeList<GetConnectivityTestsConnectivityTestSourceCloudRunRevision>(map['cloudRunRevisions'], (value) => GetConnectivityTestsConnectivityTestSourceCloudRunRevision.fromMap((value as Map).cast<String, dynamic>())),
      cloudSqlInstance: map['cloudSqlInstance'] as String,
      gkeMasterCluster: map['gkeMasterCluster'] as String,
      instance: map['instance'] as String,
      ipAddress: map['ipAddress'] as String,
      network: map['network'] as String,
      networkType: map['networkType'] as String,
      port: map['port'] as int,
      projectId: map['projectId'] as String,
    );
  }
}

