// ignore_for_file: unused_element, unnecessary_cast

import 'app_engine_version_endpoint.dart';
import 'cloud_function_endpoint.dart';
import 'cloud_run_revision_endpoint.dart';
import 'endpoint_network_type.dart';

/// Source or destination of the Connectivity Test.
class Endpoint {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions).
  final AppEngineVersionEndpoint? appEngineVersion;

  /// A [Cloud Function](https://cloud.google.com/functions).
  final CloudFunctionEndpoint? cloudFunction;

  /// A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)
  final CloudRunRevisionEndpoint? cloudRunRevision;

  /// A [Cloud SQL](https://cloud.google.com/sql) instance URI.
  final String? cloudSqlInstance;

  /// A forwarding rule and its corresponding IP address represent the frontend configuration of a Google Cloud load balancer. Forwarding rules are also used for protocol forwarding, Private Service Connect and other network services to provide forwarding information in the control plane. Format: projects/{project}/global/forwardingRules/{id} or projects/{project}/regions/{region}/forwardingRules/{id}
  final String? forwardingRule;

  /// A cluster URI for [Google Kubernetes Engine master](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
  final String? gkeMasterCluster;

  /// A Compute Engine instance URI.
  final String? instance;

  /// The IP address of the endpoint, which can be an external or internal IP. An IPv6 address is only allowed when the test's destination is a [global load balancer VIP](https://cloud.google.com/load-balancing/docs/load-balancing-overview).
  final String? ipAddress;

  /// A Compute Engine network URI.
  final String? network;

  /// Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.
  final EndpointNetworkType? networkType;

  /// The IP protocol port of the endpoint. Only applicable when protocol is TCP or UDP.
  final int? port;

  /// Project ID where the endpoint is located. The Project ID can be derived from the URI if you provide a VM instance or network URI. The following are two cases where you must provide the project ID: 1. Only the IP address is specified, and the IP address is within a Google Cloud project. 2. When you are using Shared VPC and the IP address that you provide is from the service project. In this case, the network that the IP address resides in is defined in the host project.
  final String? project;

  /// Creates a new [Endpoint].
  /// [appEngineVersion] An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions).
  /// [cloudFunction] A [Cloud Function](https://cloud.google.com/functions).
  /// [cloudRunRevision] A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)
  /// [cloudSqlInstance] A [Cloud SQL](https://cloud.google.com/sql) instance URI.
  /// [forwardingRule] A forwarding rule and its corresponding IP address represent the frontend configuration of a Google Cloud load balancer. Forwarding rules are also used for protocol forwarding, Private Service Connect and other network services to provide forwarding information in the control plane. Format: projects/{project}/global/forwardingRules/{id} or projects/{project}/regions/{region}/forwardingRules/{id}
  /// [gkeMasterCluster] A cluster URI for [Google Kubernetes Engine master](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
  /// [instance] A Compute Engine instance URI.
  /// [ipAddress] The IP address of the endpoint, which can be an external or internal IP. An IPv6 address is only allowed when the test's destination is a [global load balancer VIP](https://cloud.google.com/load-balancing/docs/load-balancing-overview).
  /// [network] A Compute Engine network URI.
  /// [networkType] Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.
  /// [port] The IP protocol port of the endpoint. Only applicable when protocol is TCP or UDP.
  /// [project] Project ID where the endpoint is located. The Project ID can be derived from the URI if you provide a VM instance or network URI. The following are two cases where you must provide the project ID: 1. Only the IP address is specified, and the IP address is within a Google Cloud project. 2. When you are using Shared VPC and the IP address that you provide is from the service project. In this case, the network that the IP address resides in is defined in the host project.
  Endpoint({
    this.appEngineVersion,
    this.cloudFunction,
    this.cloudRunRevision,
    this.cloudSqlInstance,
    this.forwardingRule,
    this.gkeMasterCluster,
    this.instance,
    this.ipAddress,
    this.network,
    this.networkType,
    this.port,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineVersionValue = appEngineVersion;
    if (appEngineVersionValue != null) {
      map['appEngineVersion'] = appEngineVersionValue.toMap();
    }
    final cloudFunctionValue = cloudFunction;
    if (cloudFunctionValue != null) {
      map['cloudFunction'] = cloudFunctionValue.toMap();
    }
    final cloudRunRevisionValue = cloudRunRevision;
    if (cloudRunRevisionValue != null) {
      map['cloudRunRevision'] = cloudRunRevisionValue.toMap();
    }
    final cloudSqlInstanceValue = cloudSqlInstance;
    if (cloudSqlInstanceValue != null) {
      map['cloudSqlInstance'] = cloudSqlInstanceValue;
    }
    final forwardingRuleValue = forwardingRule;
    if (forwardingRuleValue != null) {
      map['forwardingRule'] = forwardingRuleValue;
    }
    final gkeMasterClusterValue = gkeMasterCluster;
    if (gkeMasterClusterValue != null) {
      map['gkeMasterCluster'] = gkeMasterClusterValue;
    }
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkTypeValue = networkType;
    if (networkTypeValue != null) {
      map['networkType'] = networkTypeValue.value;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory Endpoint.fromMap(Map<String, dynamic> map) {
    return Endpoint(
      appEngineVersion: map['appEngineVersion'] == null
          ? null
          : AppEngineVersionEndpoint.fromMap(
              (map['appEngineVersion'] as Map).cast<String, dynamic>()),
      cloudFunction: map['cloudFunction'] == null
          ? null
          : CloudFunctionEndpoint.fromMap(
              (map['cloudFunction'] as Map).cast<String, dynamic>()),
      cloudRunRevision: map['cloudRunRevision'] == null
          ? null
          : CloudRunRevisionEndpoint.fromMap(
              (map['cloudRunRevision'] as Map).cast<String, dynamic>()),
      cloudSqlInstance: map['cloudSqlInstance'] == null
          ? null
          : map['cloudSqlInstance'] as String,
      forwardingRule: map['forwardingRule'] == null
          ? null
          : map['forwardingRule'] as String,
      gkeMasterCluster: map['gkeMasterCluster'] == null
          ? null
          : map['gkeMasterCluster'] as String,
      instance: map['instance'] == null ? null : map['instance'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkType: map['networkType'] == null
          ? null
          : EndpointNetworkType.fromValue(map['networkType'] as String),
      port: map['port'] == null ? null : map['port'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
