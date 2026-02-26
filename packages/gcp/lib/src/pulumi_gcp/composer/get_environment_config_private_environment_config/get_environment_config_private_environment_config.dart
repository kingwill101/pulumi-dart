// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentConfigPrivateEnvironmentConfig {
  /// When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final String cloudComposerConnectionSubnetwork;

  /// The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private_cluster_config.master_ipv4_cidr_block and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final String cloudComposerNetworkIpv4CidrBlock;

  /// The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from web_server_ipv4_cidr_block.
  final String cloudSqlIpv4CidrBlock;

  /// Mode of internal communication within the Composer environment. Must be one of "VPC_PEERING" or "PRIVATE_SERVICE_CONNECT".
  final String connectionType;

  /// If true, access to the public endpoint of the GKE cluster is denied. If this field is set to true, ip_allocation_policy.use_ip_aliases must be set to true for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final bool enablePrivateEndpoint;

  /// When enabled, IPs from public (non-RFC1918) ranges can be used for ip_allocation_policy.cluster_ipv4_cidr_block and ip_allocation_policy.service_ipv4_cidr_block.
  final bool enablePrivatelyUsedPublicIps;

  /// The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster's network. If left blank, the default value of '172.16.0.0/28' is used.
  final String masterIpv4CidrBlock;

  /// The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from<span pulumi-lang-nodejs=" masterIpv4CidrBlock " pulumi-lang-dotnet=" MasterIpv4CidrBlock " pulumi-lang-go=" masterIpv4CidrBlock " pulumi-lang-python=" master_ipv4_cidr_block " pulumi-lang-yaml=" masterIpv4CidrBlock " pulumi-lang-java=" masterIpv4CidrBlock "> master_ipv4_cidr_block </span>and cloud_sql_ipv4_cidr_block. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final String webServerIpv4CidrBlock;

  GetEnvironmentConfigPrivateEnvironmentConfig({
    required this.cloudComposerConnectionSubnetwork,
    required this.cloudComposerNetworkIpv4CidrBlock,
    required this.cloudSqlIpv4CidrBlock,
    required this.connectionType,
    required this.enablePrivateEndpoint,
    required this.enablePrivatelyUsedPublicIps,
    required this.masterIpv4CidrBlock,
    required this.webServerIpv4CidrBlock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudComposerConnectionSubnetwork'] =
        cloudComposerConnectionSubnetwork;
    map['cloudComposerNetworkIpv4CidrBlock'] =
        cloudComposerNetworkIpv4CidrBlock;
    map['cloudSqlIpv4CidrBlock'] = cloudSqlIpv4CidrBlock;
    map['connectionType'] = connectionType;
    map['enablePrivateEndpoint'] = enablePrivateEndpoint;
    map['enablePrivatelyUsedPublicIps'] = enablePrivatelyUsedPublicIps;
    map['masterIpv4CidrBlock'] = masterIpv4CidrBlock;
    map['webServerIpv4CidrBlock'] = webServerIpv4CidrBlock;
    return map;
  }

  factory GetEnvironmentConfigPrivateEnvironmentConfig.fromMap(
      Map<String, dynamic> map) {
    return GetEnvironmentConfigPrivateEnvironmentConfig(
      cloudComposerConnectionSubnetwork:
          map['cloudComposerConnectionSubnetwork'] as String,
      cloudComposerNetworkIpv4CidrBlock:
          map['cloudComposerNetworkIpv4CidrBlock'] as String,
      cloudSqlIpv4CidrBlock: map['cloudSqlIpv4CidrBlock'] as String,
      connectionType: map['connectionType'] as String,
      enablePrivateEndpoint: map['enablePrivateEndpoint'] as bool,
      enablePrivatelyUsedPublicIps: map['enablePrivatelyUsedPublicIps'] as bool,
      masterIpv4CidrBlock: map['masterIpv4CidrBlock'] as String,
      webServerIpv4CidrBlock: map['webServerIpv4CidrBlock'] as String,
    );
  }
}
