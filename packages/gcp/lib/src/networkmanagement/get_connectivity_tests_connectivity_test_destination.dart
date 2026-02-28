// ignore_for_file: unused_element, unnecessary_cast

class GetConnectivityTestsConnectivityTestDestination {
  /// A Cloud SQL instance URI.
  final String cloudSqlInstance;

  /// Forwarding rule URI. Forwarding rules are frontends for load balancers,
  /// PSC endpoints, and Protocol Forwarding.
  final String forwardingRule;

  /// A DNS endpoint of Google Kubernetes Engine cluster control plane.
  final String fqdn;

  /// A cluster URI for Google Kubernetes Engine cluster control plane.
  final String gkeMasterCluster;

  /// A Compute Engine instance URI.
  final String instance;

  /// The IP address of the endpoint.
  final String ipAddress;

  /// A VPC network URI.
  final String network;

  /// The IP protocol port of the endpoint.
  final int port;

  /// Project ID where the endpoint is located.
  final String projectId;

  /// A Redis Cluster URI.
  final String redisCluster;

  /// A Redis Instance URI.
  final String redisInstance;

  /// Creates a new [GetConnectivityTestsConnectivityTestDestination].
  /// [cloudSqlInstance] A Cloud SQL instance URI.
  /// [forwardingRule] Forwarding rule URI. Forwarding rules are frontends for load balancers,
  /// [fqdn] A DNS endpoint of Google Kubernetes Engine cluster control plane.
  /// [gkeMasterCluster] A cluster URI for Google Kubernetes Engine cluster control plane.
  /// [instance] A Compute Engine instance URI.
  /// [ipAddress] The IP address of the endpoint.
  /// [network] A VPC network URI.
  /// [port] The IP protocol port of the endpoint.
  /// [projectId] Project ID where the endpoint is located.
  /// [redisCluster] A Redis Cluster URI.
  /// [redisInstance] A Redis Instance URI.
  GetConnectivityTestsConnectivityTestDestination({
    required this.cloudSqlInstance,
    required this.forwardingRule,
    required this.fqdn,
    required this.gkeMasterCluster,
    required this.instance,
    required this.ipAddress,
    required this.network,
    required this.port,
    required this.projectId,
    required this.redisCluster,
    required this.redisInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudSqlInstance'] = cloudSqlInstance;
    map['forwardingRule'] = forwardingRule;
    map['fqdn'] = fqdn;
    map['gkeMasterCluster'] = gkeMasterCluster;
    map['instance'] = instance;
    map['ipAddress'] = ipAddress;
    map['network'] = network;
    map['port'] = port;
    map['projectId'] = projectId;
    map['redisCluster'] = redisCluster;
    map['redisInstance'] = redisInstance;
    return map;
  }

  factory GetConnectivityTestsConnectivityTestDestination.fromMap(
      Map<String, dynamic> map) {
    return GetConnectivityTestsConnectivityTestDestination(
      cloudSqlInstance: map['cloudSqlInstance'] as String,
      forwardingRule: map['forwardingRule'] as String,
      fqdn: map['fqdn'] as String,
      gkeMasterCluster: map['gkeMasterCluster'] as String,
      instance: map['instance'] as String,
      ipAddress: map['ipAddress'] as String,
      network: map['network'] as String,
      port: map['port'] as int,
      projectId: map['projectId'] as String,
      redisCluster: map['redisCluster'] as String,
      redisInstance: map['redisInstance'] as String,
    );
  }
}
