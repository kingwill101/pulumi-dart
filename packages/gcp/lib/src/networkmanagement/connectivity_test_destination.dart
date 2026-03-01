// ignore_for_file: unused_element, unnecessary_cast


class ConnectivityTestDestination {
  /// A Cloud SQL instance URI.
  final String? cloudSqlInstance;
  /// Forwarding rule URI. Forwarding rules are frontends for load balancers,
  /// PSC endpoints, and Protocol Forwarding.
  final String? forwardingRule;
  /// A DNS endpoint of Google Kubernetes Engine cluster control plane.
  /// Requires gke_master_cluster to be set, can't be used simultaneoulsly with
  /// ip_address or network. Applicable only to destination endpoint.
  final String? fqdn;
  /// A cluster URI for Google Kubernetes Engine cluster control plane.
  final String? gkeMasterCluster;
  /// A Compute Engine instance URI.
  final String? instance;
  /// The IP address of the endpoint, which can be an external or internal IP.
  final String? ipAddress;
  /// A VPC network URI.
  final String? network;
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
  /// A Redis Cluster URI.
  final String? redisCluster;
  /// A Redis Instance URI.
  final String? redisInstance;

  /// Creates a new [ConnectivityTestDestination].
  /// [cloudSqlInstance] A Cloud SQL instance URI.
  /// [forwardingRule] Forwarding rule URI. Forwarding rules are frontends for load balancers,
  /// [fqdn] A DNS endpoint of Google Kubernetes Engine cluster control plane.
  /// [gkeMasterCluster] A cluster URI for Google Kubernetes Engine cluster control plane.
  /// [instance] A Compute Engine instance URI.
  /// [ipAddress] The IP address of the endpoint, which can be an external or internal IP.
  /// [network] A VPC network URI.
  /// [port] The IP protocol port of the endpoint. Only applicable when protocol is
  /// [projectId] Project ID where the endpoint is located.
  /// [redisCluster] A Redis Cluster URI.
  /// [redisInstance] A Redis Instance URI.
  ConnectivityTestDestination({
    this.cloudSqlInstance,
    this.forwardingRule,
    this.fqdn,
    this.gkeMasterCluster,
    this.instance,
    this.ipAddress,
    this.network,
    this.port,
    this.projectId,
    this.redisCluster,
    this.redisInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlInstance': ?cloudSqlInstance,
      'forwardingRule': ?forwardingRule,
      'fqdn': ?fqdn,
      'gkeMasterCluster': ?gkeMasterCluster,
      'instance': ?instance,
      'ipAddress': ?ipAddress,
      'network': ?network,
      'port': ?port,
      'projectId': ?projectId,
      'redisCluster': ?redisCluster,
      'redisInstance': ?redisInstance,
    };
  }

  factory ConnectivityTestDestination.fromMap(Map<String, dynamic> map) {
    return ConnectivityTestDestination(
      cloudSqlInstance: map['cloudSqlInstance'] == null ? null : map['cloudSqlInstance'] as String,
      forwardingRule: map['forwardingRule'] == null ? null : map['forwardingRule'] as String,
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      gkeMasterCluster: map['gkeMasterCluster'] == null ? null : map['gkeMasterCluster'] as String,
      instance: map['instance'] == null ? null : map['instance'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      redisCluster: map['redisCluster'] == null ? null : map['redisCluster'] as String,
      redisInstance: map['redisInstance'] == null ? null : map['redisInstance'] as String,
    );
  }
}

