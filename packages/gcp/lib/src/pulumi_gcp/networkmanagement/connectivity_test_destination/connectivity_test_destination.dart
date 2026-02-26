// ignore_for_file: unused_element, unnecessary_cast

class ConnectivityTestDestination {
  /// A Cloud SQL instance URI.
  final String? cloudSqlInstance;

  /// Forwarding rule URI. Forwarding rules are frontends for load balancers,
  /// PSC endpoints, and Protocol Forwarding.
  final String? forwardingRule;

  /// A DNS endpoint of Google Kubernetes Engine cluster control plane.
  /// Requires<span pulumi-lang-nodejs=" gkeMasterCluster " pulumi-lang-dotnet=" GkeMasterCluster " pulumi-lang-go=" gkeMasterCluster " pulumi-lang-python=" gke_master_cluster " pulumi-lang-yaml=" gkeMasterCluster " pulumi-lang-java=" gkeMasterCluster "> gke_master_cluster </span>to be set, can't be used simultaneoulsly with<span pulumi-lang-nodejs="
  /// ipAddress " pulumi-lang-dotnet="
  /// IpAddress " pulumi-lang-go="
  /// ipAddress " pulumi-lang-python="
  /// ip_address " pulumi-lang-yaml="
  /// ipAddress " pulumi-lang-java="
  /// ipAddress ">
  /// ip_address </span>or network. Applicable only to destination endpoint.
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
    final map = <String, dynamic>{};
    final cloudSqlInstanceValue = cloudSqlInstance;
    if (cloudSqlInstanceValue != null) {
      map['cloudSqlInstance'] = cloudSqlInstanceValue;
    }
    final forwardingRuleValue = forwardingRule;
    if (forwardingRuleValue != null) {
      map['forwardingRule'] = forwardingRuleValue;
    }
    final fqdnValue = fqdn;
    if (fqdnValue != null) {
      map['fqdn'] = fqdnValue;
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
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    final redisClusterValue = redisCluster;
    if (redisClusterValue != null) {
      map['redisCluster'] = redisClusterValue;
    }
    final redisInstanceValue = redisInstance;
    if (redisInstanceValue != null) {
      map['redisInstance'] = redisInstanceValue;
    }
    return map;
  }

  factory ConnectivityTestDestination.fromMap(Map<String, dynamic> map) {
    return ConnectivityTestDestination(
      cloudSqlInstance: map['cloudSqlInstance'] == null
          ? null
          : map['cloudSqlInstance'] as String,
      forwardingRule: map['forwardingRule'] == null
          ? null
          : map['forwardingRule'] as String,
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      gkeMasterCluster: map['gkeMasterCluster'] == null
          ? null
          : map['gkeMasterCluster'] as String,
      instance: map['instance'] == null ? null : map['instance'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      redisCluster:
          map['redisCluster'] == null ? null : map['redisCluster'] as String,
      redisInstance:
          map['redisInstance'] == null ? null : map['redisInstance'] as String,
    );
  }
}
